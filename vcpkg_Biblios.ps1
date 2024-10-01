# Skript zum Installieren von vcpkg und den Bibliotheken

# Überprüfen, ob vcpkg bereits vorhanden ist
$vcpkgPath = "C:\vcpkg"
$vcpkgCmd = "$vcpkgPath\vcpkg.exe"

if (-Not (Test-Path $vcpkgCmd)) {
    Write-Host "vcpkg nicht gefunden. Starte Installation..."

    # vcpkg herunterladen und installieren
    Invoke-WebRequest -Uri https://github.com/microsoft/vcpkg/archive/refs/heads/master.zip -OutFile "$env:TEMP\vcpkg.zip"
    Expand-Archive -Path "$env:TEMP\vcpkg.zip" -DestinationPath $vcpkgPath
    Remove-Item "$env:TEMP\vcpkg.zip"

    # Initialisiere vcpkg
    cd $vcpkgPath
    .\bootstrap-vcpkg.bat

    Write-Host "vcpkg erfolgreich installiert!"
} else {
    Write-Host "vcpkg bereits installiert."
}

# Stelle sicher, dass vcpkg global ausführbar ist
$env:PATH += ";$vcpkgPath"

# Installiere die Bibliotheken
Write-Host "Installiere Bibliotheken über vcpkg..."

# PDF Libraries
& $vcpkgCmd install poppler
& $vcpkgCmd install pdfium

# DOCX Libraries
& $vcpkgCmd install libzip
& $vcpkgCmd install libxml2

# XLSX Libraries
& $vcpkgCmd install libxlsxwriter

# ODF Libraries
& $vcpkgCmd install libodfgen

# E-Mail und Outlook Libraries
& $vcpkgCmd install libetpan
& $vcpkgCmd install curl
& $vcpkgCmd install libpff

# Bildverarbeitung Libraries
& $vcpkgCmd install opencv
& $vcpkgCmd install sdl2
& $vcpkgCmd install libpng
& $vcpkgCmd install libjpeg-turbo
& $vcpkgCmd install libtiff

# Audio/Video Verarbeitung
& $vcpkgCmd install ffmpeg

# Kompression und Archivierung
& $vcpkgCmd install zlib
& $vcpkgCmd install libzip

# Text Rendering und Fonts
& $vcpkgCmd install freetype
& $vcpkgCmd install harfbuzz

# Dokumenten Rendering und Druck
& $vcpkgCmd install cairo

# SQLite
& $vcpkgCmd install sqlite3

# MySQL
& $vcpkgCmd install mysql-connector-c

# PostgreSQL
& $vcpkgCmd install libpq

# Boost.Asio
& $vcpkgCmd install boost-asio

# libssh2
& $vcpkgCmd install libssh2

# JSON Bibliotheken
& $vcpkgCmd install nlohmann-json
& $vcpkgCmd install rapidjson

# Grafikbibliothek
& $vcpkgCmd install sfml

# Mathematische Bibliotheken
& $vcpkgCmd install eigen3
& $vcpkgCmd install openblas

# Boost Libraries
& $vcpkgCmd install boost

# Logging und Formatierung
& $vcpkgCmd install fmt
& $vcpkgCmd install spdlog

# Kommandozeilen-Argument Parsing
& $vcpkgCmd install tclap

# JUCE Framework
& $vcpkgCmd install juce

# Testing Libraries
& $vcpkgCmd install gtest
& $vcpkgCmd install catch2
& $vcpkgCmd install doctest

# Weitere Tools und Bibliotheken
& $vcpkgCmd install protobuf
& $vcpkgCmd install yaml-cpp
& $vcpkgCmd install tbb
& $vcpkgCmd install jemalloc
& $vcpkgCmd install tcmalloc
& $vcpkgCmd install memorypool
& $vcpkgCmd install boost-test
& $vcpkgCmd install benchmark

Write-Host "Installation abgeschlossen!"
