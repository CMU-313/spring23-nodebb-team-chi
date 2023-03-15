14:38:48 (39018) INFO ProjectReader Found 555 of 9719 file(s) to be mutated.
`isModuleDeclaration` has been deprecated, please migrate to `isImportOrExportDeclaration`
    at Object.isModuleDeclaration (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@babel/types/lib/validators/generated/index.js:3940:35)
    at isValidParent (file:///Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/dist/src/mutators/string-literal-mutator.js:19:15)
14:38:49 (39018) ERROR Stryker Unexpected error occurred while running Stryker SyntaxError: /Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/src/cli/index.js: 'return' outside of function. (101:4)

   99 | if (!configExists && process.argv[2] !== 'setup') {
  100 |     require('./setup').webInstall();
> 101 |     return;
      |     ^
  102 | }
  103 |
  104 | process.env.CONFIG = configFile;
    at instantiate (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:64:32)
    at constructor (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:362:12)
    at V8IntrinsicMixin.raise (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:3254:19)
    at V8IntrinsicMixin.parseReturnStatement (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12909:12)
    at V8IntrinsicMixin.parseStatementContent (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12573:21)
    at V8IntrinsicMixin.parseStatementLike (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12534:17)
    at V8IntrinsicMixin.parseStatementListItem (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12521:17)
    at V8IntrinsicMixin.parseBlockOrModuleBlockBody (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:13104:61)
    at V8IntrinsicMixin.parseBlockBody (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:13097:10)
    at V8IntrinsicMixin.parseBlock (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:13085:10)
    at V8IntrinsicMixin.parseStatementContent (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12627:21)
    at V8IntrinsicMixin.parseStatementLike (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12534:17)
    at V8IntrinsicMixin.parseStatementOrFunctionDeclaration (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12524:17)
    at V8IntrinsicMixin.parseIfStatement (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12903:28)
    at V8IntrinsicMixin.parseStatementContent (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12571:21)
    at V8IntrinsicMixin.parseStatementLike (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12534:17)
    at V8IntrinsicMixin.parseModuleItem (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12518:17)
    at V8IntrinsicMixin.parseBlockOrModuleBlockBody (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:13104:36)
    at V8IntrinsicMixin.parseBlockBody (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:13097:10)
    at V8IntrinsicMixin.parseProgram (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12432:10)
    at V8IntrinsicMixin.parseTopLevel (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:12422:25)
    at V8IntrinsicMixin.parse (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:14234:10)
    at parse (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/parser/lib/index.js:14276:38)
    at parser (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/core/lib/parser/index.js:41:34)
    at parser.next (<anonymous>)
    at parse (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/@stryker-mutator/instrumenter/node_modules/@babel/core/lib/parse.js:25:37)
    at parse.next (<anonymous>)
    at step (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/gensync/index.js:261:32)
    at /Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/gensync/index.js:273:13
    at async.call.result.err.err (/Users/chen/Documents/GitHub/67328/spring23-nodebb-team-chi/node_modules/gensync/index.js:223:11) {
  code: 'BABEL_PARSE_ERROR',
  reasonCode: 'IllegalReturn',
  loc: Position { line: 101, column: 4, index: 3412 },
  pos: [Getter/Setter]
}
14:38:49 (39018) INFO Stryker This might be a known problem with a solution documented in our troubleshooting guide.
14:38:49 (39018) INFO Stryker You can find it at https://stryker-mutator.io/docs/stryker-js/troubleshooting/
14:38:49 (39018) INFO Stryker Still having trouble figuring out what went wrong? Try `npx stryker run --fileLogLevel trace --logLevel debug` to get some more info.