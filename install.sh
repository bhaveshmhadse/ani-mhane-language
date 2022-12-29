#!/bin/bash

echo "Installing ani mhane language..."
mkdir app
cd app
echo '#!/usr/bin/env node' >> server.js
echo 'const filesToRun = process.argv;const fs = require("fs");const { spawn } = require("child_process");const convertFile = fileName => {writeNewFile(replaceWords(readFile(fileName)));const typescriptParser = spawn("node", ["test.js"]);typescriptParser.stdout.on("data", data => {console.log(data.toString());});setTimeout(() => {removeFile(fileToRun);}, 2000);};const readFile = fileName => fs.readFileSync(fileName, { encoding: "utf8", flag: "r" });const writeNewFile = data => fs.writeFileSync(fileToRun, data);const removeFile = () => fs.unlinkSync(fileToRun);const fileToRun = "test.js";const replaceWords = string => {let newString = string;for ([key, value] of Object.entries(keywords)) newString = newString.replaceAll(key, value);return newString;};const keywords = {aniMhane: "let",animhane: "let",jrka: "if",jr: "if",nahitr: "else",naitr: "else",kinva: "else if",ghe: "return",ekkaamkr: "function",ekKaamKr: "function",ekkamkr: "function",helihi: "console.log",print: "console.log",lihi: "console.log",};filesToRun.forEach(file => {if (file.split(".").at(-1) != "baray") return;convertFile(file);});' >> server.js
echo '{"name": "ani-mhane-language","version": "1.0.0","description": "","main": "./server.js","scripts": {"test": "echo \"Error: no test specified\" && exit 1"},"bin": {"animhane": "./server.js"},"pkg": {"assets": ["node_modules/**/*","src/**/*"]},"author": "BHAVESH MHADSE", "license": "MIT"}' >> package.json
npm install -g .
echo "Successfull Installed"