#!/usr/bin/env bash
# Wraps index.html (an HTML fragment, as published to claude.ai) in a full document for static hosting.
set -e
mkdir -p dist
{
cat <<'HEAD'
<!doctype html><html lang="nl"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="theme-color" content="#0a0c0f"><meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"><meta name="apple-mobile-web-app-title" content="Trainingslog">
<link rel="manifest" href="manifest.webmanifest"><link rel="apple-touch-icon" href="icon-180.png"><link rel="icon" href="icon-512.png">
<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}[hidden]{display:none!important}img{max-width:100%}</style>
</head><body>
HEAD
cat index.html
echo '</body></html>'
} > dist/index.html
cp manifest.webmanifest icon-512.png icon-180.png dist/
