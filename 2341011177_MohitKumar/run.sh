#!/bin/bash
# Run script for Library Loan Management System
# Student: Mohit Kumar | Roll: 2341011177

JAVA="/home/iter/.antigravity/extensions/redhat.java-1.54.0-linux-x64/jre/21.0.10-linux-x86_64/bin/java"
JAVAC="/home/iter/.antigravity/extensions/redhat.java-1.54.0-linux-x64/jre/21.0.10-linux-x86_64/bin/javac"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$SCRIPT_DIR"

# Compile if out/ doesn't exist or sources are newer
if [ ! -d "out" ] || find src -name "*.java" -newer out -print -quit | grep -q .; then
  echo "Compiling..."
  mkdir -p out
  find src -name "*.java" > sources.txt
  $JAVAC -d out @sources.txt
  if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
  fi
  echo "Compilation successful."
  echo ""
fi

# Run the application
$JAVA -cp "out:lib/*" mohitkumar_2341011177.MainApp "$@"
