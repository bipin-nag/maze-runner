(* https://github.com/WolframResearch/codeformatter *)

(* https://reference.wolfram.com/language/guide/Files.html *)

Needs["CodeFormatter`"]

input = $ScriptCommandLine[[2]]

Print[input]

file = File[Directory[] <> "/" <> input]

formatted = CodeFormat[ReadString[file]]

WriteString[file, formatted]