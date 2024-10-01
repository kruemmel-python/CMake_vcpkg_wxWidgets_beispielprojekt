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

# ---------------------------------------------
# Zusätzliche Bibliotheken für professionelle C++ Programmierung
# ---------------------------------------------

# Networking and WebSocket
& $vcpkgCmd install websocketpp
& $vcpkgCmd install boost-beast  # Boost.Beast für HTTP und WebSocket-Kommunikation

# Multi-threading / Parallel Computing
& $vcpkgCmd install boost-fiber  # Leichtgewichtige Threads (Fibers)
& $vcpkgCmd install openmp  # OpenMP für parallele Programmierung

# Kryptografie und Sicherheit
& $vcpkgCmd install openssl  # OpenSSL für Verschlüsselung und TLS/SSL Kommunikation
& $vcpkgCmd install libsodium  # Eine moderne Kryptografiebibliothek
& $vcpkgCmd install gnutls  # GnuTLS für sichere Kommunikation

# Web- und API-Entwicklung
& $vcpkgCmd install cpprestsdk  # C++ REST SDK für Web-APIs und Cloud-Dienste
& $vcpkgCmd install pistache  # Webframework für High-Performance C++-Server

# Netzwerkbibliotheken
& $vcpkgCmd install asio  # Standalone Asio für asynchrone Netzwerkprogrammierung
& $vcpkgCmd install libuv  # Plattformübergreifende Netzwerk- und IO-Bibliothek
& $vcpkgCmd install cpp-httplib  # Header-only HTTP/HTTPS Bibliothek

# Datenbanken und ORM
& $vcpkgCmd install soci  # SOCI - C++ Database Access Library für PostgreSQL, MySQL, SQLite
& $vcpkgCmd install odb  # ORM für C++ (Objekt-Relationales Mapping)

# Datenstrukturen und Algorithmen
& $vcpkgCmd install tbb  # Threading Building Blocks für parallele Algorithmen
& $vcpkgCmd install boost-geometry  # Boost.Geometry für geometrische Berechnungen
& $vcpkgCmd install boost-graph  # Boost.Graph für graphentheoretische Berechnungen

# Bildverarbeitung
& $vcpkgCmd install leptonica  # Bildverarbeitungsbibliothek, verwendet von Tesseract
& $vcpkgCmd install tesseract  # OCR (Optical Character Recognition) Engine

# Signalverarbeitung und Audio
& $vcpkgCmd install fftw3  # FFTW für schnelle Fourier-Transformation
& $vcpkgCmd install portaudio  # Cross-platform Audio Library
& $vcpkgCmd install soxr  # Hochwertiger Audio Resampler

# C++ Dateiformate und Serialisierung
& $vcpkgCmd install cereal  # C++11 Library für Datenserialisierung
& $vcpkgCmd install flatbuffers  # Bibliothek für effiziente plattformübergreifende Serialisierung

# Testing und Codequalität
& $vcpkgCmd install cppcheck  # Statischer Code-Analyser für C++
& $vcpkgCmd install gcovr  # Coverage-Reporting für Unit-Tests

# Mathematik und Statistik
& $vcpkgCmd install armadillo  # High-performance linear algebra library
& $vcpkgCmd install gsl  # GNU Scientific Library für mathematische Berechnungen


Write-Host "Installation abgeschlossen!"
