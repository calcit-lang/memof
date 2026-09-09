import assert from 'node:assert/strict';
import test from 'node:test';
import {
  memof1_call_by as memo,
  begin_memof1_frame_$x_ as begin,
  clear_memof1_function_$x_ as clearFunction,
  finish_memof1_frame_$x_ as finish,
  reset_memof1_caches_$x_ as reset,
} from '../js-out/memof.once.mjs';

test('matching key/function/arguments reuse the cached result', () => {
  reset();
  let calls = 0;
  const f = x => { calls++; return { x }; };
  const a = memo('a', f, 1);
  assert.equal(memo('a', f, 1), a);
  assert.notEqual(memo('b', f, 1), a);
  assert.notEqual(memo('a', f, 2), a);
  assert.equal(calls, 3);
});

test('nil keys bypass caching while falsey results remain cached', () => {
  for (const result of [null, false, 0, '']) {
    reset();
    let calls = 0;
    const f = () => { calls++; return result; };
    assert.equal(memo('key', f), result);
    assert.equal(memo('key', f), result);
    memo(null, f);
    memo(null, f);
    assert.equal(calls, 3);
  }
});

test('function identity is part of the cache key', () => {
  reset();
  const a = () => 'a';
  const b = () => 'b';
  assert.equal(memo('same', a), 'a');
  assert.equal(memo('same', b), 'b');
  assert.equal(memo('same', a), 'a');
});

test('one function cache can be cleared without invalidating another', () => {
  reset();
  let aCalls = 0;
  let bCalls = 0;
  const a = () => { aCalls++; return 'a'; };
  const b = () => { bCalls++; return 'b'; };
  memo('same', a);
  memo('same', b);
  clearFunction(a);
  memo('same', a);
  memo('same', b);
  assert.equal(aCalls, 2);
  assert.equal(bCalls, 1);
});

test('frames reuse retained entries and prune unused keys', () => {
  reset();
  let calls = 0;
  const f = x => { calls++; return { x }; };
  begin();
  const a = memo('a', f, 1);
  memo('b', f, 2);
  finish();
  begin();
  assert.equal(memo('a', f, 1), a);
  assert.equal(memo('a', f, 1), a);
  finish();
  assert.equal(calls, 2);
  begin();
  memo('b', f, 2);
  finish();
  assert.equal(calls, 3);
});

test('current-frame values take precedence over previous-frame entries', () => {
  reset();
  let calls = 0;
  const f = x => { calls++; return x; };
  begin();
  assert.equal(memo('a', f, 1), 1);
  finish();
  begin();
  assert.equal(memo('a', f, 2), 2);
  assert.equal(memo('a', f, 2), 2);
  finish();
  assert.equal(calls, 2);
});
