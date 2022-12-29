#!/bin/bash

echo "Installing ani mhane language..."
mkdir app
cd app
echo '#!/usr/bin/env node' >> server.js
echo 'const filesToRun=process.argv,fs=require("fs"),{spawn:spawn}=require("child_process"),convertFile=e=>{writeNewFile(replaceWords(readFile(e))),spawn("node",["test.js"]).stdout.on("data",e=>{console.log(e.toString())}),setTimeout(()=>{removeFile(fileToRun)},2e3)},readFile=e=>fs.readFileSync(e,{encoding:"utf8",flag:"r"}),writeNewFile=e=>fs.writeFileSync(fileToRun,e),removeFile=()=>fs.unlinkSync(fileToRun),fileToRun="test.js",replaceWords=e=>{let i=e;for([key,value]of Object.entries(keywords))i=i.replaceAll(key,value);return i},keywords={aniMhane:"let",animhane:"let",jrka:"if",jr:"if",nahitr:"else",naitr:"else",kinva:"else if",ghe:"return",ekkaamkr:"function",ekKaamKr:"function",ekkamkr:"function",helihi:"console.log",print:"console.log",lihi:"console.log"};filesToRun.forEach(e=>{"baray"==e.split(".").at(-1)&&convertFile(e)});' >> server.js
echo '{"name": "ani-mhane-language","version": "1.0.0","description": "","main": "./server.js","scripts": {"test": "echo \"Error: no test specified\" && exit 1"},"bin": {"animhane": "./server.js"},"pkg": {"assets": ["node_modules/**/*","src/**/*"]},"author": "BHAVESH MHADSE","license": "MIT"}' >> package.json
npm install -g .
echo "Successfull Installed"