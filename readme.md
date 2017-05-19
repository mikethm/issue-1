

npm install @ionic/app-scripts@latest --save-dev
npm install

you can see it runs and loads forms from form.io service
npm run ionic:serve

npm run ionic:build --prod

will result in the error:
Error: Error encountered resolving symbol values statically. Calling function 'ɵmakeDecorator', function 

            calls are not supported. Consider replacing the function or lambda with a reference to an exported function, 

            resolving symbol Injectable in 

            node_modules/ng2-formio/node_modules/@angular/core/core.d.ts,

            resolving symbol FormioLoader in 

            node_modules/ng2-formio/src/formio.loader.d.ts, resolving 

            symbol FormioLoader in 

            node_modules/ng2-formio/src/formio.loader.d.ts 

Error: Error encountered resolving symbol values statically. Calling function 'ɵmakeDecorator', function calls are not supported. Consider replacing the function or lambda with a reference to an exported function, resolving symbol Injectable in 
node_modules/ng2-formio/node_modules/@angular/core/core.d.ts, resolving symbol FormioLoader in node_modules/ng2-formio/src/formio.loader.d.ts, resolving symbol FormioLoader in node_modules/ng2-formio/src/formio.loader.d.ts

    at syntaxError (node_modules/@angular/compiler/bundles/compiler.umd.js:1513:34)

    at simplifyInContext (node_modules/@angular/compiler/bundles/compiler.umd.js:23316:23)

    at StaticReflector.simplify (node_modules/@angular/compiler/bundles/compiler.umd.js:23328:13)

    at StaticReflector.annotations (node_modules/@angular/compiler/bundles/compiler.umd.js:22794:60)

    at NgModuleResolver.resolve (node_modules/@angular/compiler/bundles/compiler.umd.js:13352:70)

    at CompileMetadataResolver.getNgModuleMetadata (node_modules/@angular/compiler/bundles/compiler.umd.js:13937:60)

    at addNgModule (node_modules/@angular/compiler/bundles/compiler.umd.js:22526:58)

    at node_modules/@angular/compiler/bundles/compiler.umd.js:22537:14

    at Array.forEach (native)

    at _createNgModules (node_modules/@angular/compiler/bundles/compiler.umd.js:22536:26)


