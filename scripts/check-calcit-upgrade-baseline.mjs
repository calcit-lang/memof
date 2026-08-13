import { readFile } from "node:fs/promises";

const baseline = JSON.parse(await readFile("config/calcit-upgrade-baseline.json", "utf8"));
const types = JSON.parse(await readFile(".calcit/upgrade/check-types.json", "utf8"));
const weak = JSON.parse(await readFile(".calcit/upgrade/weak-types.json", "utf8"));
const deprecated = JSON.parse(await readFile(".calcit/upgrade/deprecated.json", "utf8"));

const levels = types.data.summary.levels;
const kinds = weak.data.summary.kinds;
const intents = weak.data.summary.intents;
const current = {
  typeNone: levels.none,
  typeNotFull: levels.none + levels.partial,
  schemaDynamic: kinds["schema-dynamic"],
  codeDynamic: kinds["code-dynamic"],
  codeNil: kinds["code-nil"],
  declaredOptional: intents["declared-optional"],
  deprecatedCalls: deprecated.data.summary.calls,
};

const regressions = Object.entries(current).filter(([key, value]) => value > baseline[key]);
if (regressions.length > 0) {
  throw new Error(`Calcit migration debt regressed: ${regressions.map(([key, value]) => `${key}=${value} > ${baseline[key]}`).join(", ")}`);
}

console.log("Calcit migration baseline passed", current);
