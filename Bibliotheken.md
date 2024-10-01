# Abhängigkeiten für c++

Mehrere Bibliotheken, die über den vcpkg Paketmanager installiert werden. Nachfolgend findest du eine Beschreibung jeder Bibliothek, gruppiert nach ihrem Verwendungszweck, inklusive Links zu den offiziellen Dokumentationen.

## PDF Libraries
- **[Poppler](https://poppler.freedesktop.org/)**: Poppler ist eine Bibliothek zum Rendern von PDF-Dokumenten. Es unterstützt eine Vielzahl von PDF-Funktionen, wie das Extrahieren von Text, das Rendern von Bildern und das Konvertieren von PDFs in andere Formate.
  - Installation: `%VCPKG_CMD% install poppler`
  
- **[PDFium](https://pdfium.googlesource.com/pdfium/+/refs/heads/main/README.md)**: Eine PDF-Rendering-Engine, die hauptsächlich in Chromium verwendet wird. Sie ermöglicht das Parsen und Rendern von PDFs, einschließlich Funktionen wie das Anzeigen und Bearbeiten von PDF-Inhalten.
  - Installation: `%VCPKG_CMD% install pdfium`

## DOCX Libraries
- **[libzip](https://libzip.org/)**: Eine C-Bibliothek zum Lesen, Erstellen und Modifizieren von ZIP-Archiven. Sie wird häufig verwendet, um DOCX-Dateien (die ZIP-Container sind) zu verarbeiten.
  - Installation: `%VCPKG_CMD% install libzip`
  
- **[libxml2](http://www.xmlsoft.org/)**: Eine Bibliothek zur Verarbeitung von XML-Dateien. DOCX-Dateien basieren auf XML, daher ist libxml2 entscheidend für das Parsen und Verarbeiten von DOCX-Dokumenten.
  - Installation: `%VCPKG_CMD% install libxml2`

## XLSX Libraries
- **[libxlsxwriter](https://libxlsxwriter.github.io/)**: Diese Bibliothek dient zur Erstellung von XLSX-Dateien im Excel-Format. Sie bietet eine einfache API zum Schreiben von Arbeitsblättern, Formatieren von Zellen und Hinzufügen von Diagrammen.
  - Installation: `%VCPKG_CMD% install libxlsxwriter`

## ODF Libraries
- **[libodfgen](https://wiki.documentfoundation.org/DLP/Libraries/libodfgen)**: Eine Bibliothek zum Generieren von OpenDocument-Format (ODF) Dateien, die von OpenOffice und LibreOffice verwendet werden. Sie wird häufig zum Erstellen und Bearbeiten von ODF-Dateien wie Tabellenkalkulationen, Textdokumenten und Präsentationen verwendet.
  - Installation: `%VCPKG_CMD% install libodfgen`

## E-Mail und Outlook Libraries
- **[libetpan](https://github.com/dinhviethoa/libetpan)**: Eine Bibliothek zur Handhabung von E-Mail-Protokollen wie IMAP, SMTP und POP3. Sie wird verwendet, um E-Mails zu senden, zu empfangen und zu verarbeiten.
  - Installation: `%VCPKG_CMD% install libetpan`
  
- **[curl](https://curl.se/libcurl/)**: Eine Bibliothek für Datenübertragungen, die Protokolle wie HTTP, FTP, IMAP und SMTP unterstützt. Sie wird oft in Kombination mit libetpan verwendet, um E-Mails zu senden und zu empfangen.
  - Installation: `%VCPKG_CMD% install curl`
  
- **[libpff](https://github.com/libyal/libpff)**: Eine Bibliothek zum Verarbeiten von Microsoft Outlook PST-Dateien. Sie ermöglicht das Extrahieren und Bearbeiten von E-Mail-Daten aus PST-Archiven.
  - Installation: `%VCPKG_CMD% install libpff`

## Bildverarbeitung Libraries
- **[OpenCV](https://opencv.org/)**: Eine Open-Source-Bibliothek für Computer Vision und maschinelles Sehen. Sie bietet umfangreiche Funktionen für Bildverarbeitung, Videoanalyse und maschinelles Lernen.
  - Installation: `%VCPKG_CMD% install opencv`
  
- **[SDL2](https://wiki.libsdl.org/SDL2/)**: Eine plattformübergreifende Bibliothek zur Verwaltung von Grafiken, Audio, Eingabegeräten und mehr. Sie wird oft für Spiele und Multimediaprojekte verwendet.
  - Installation: `%VCPKG_CMD% install sdl2`
  
- **[libpng](http://www.libpng.org/pub/png/libpng.html)**: Eine Bibliothek zum Lesen und Schreiben von PNG-Bilddateien.
  - Installation: `%VCPKG_CMD% install libpng`
  
- **[libjpeg-turbo](https://libjpeg-turbo.org/)**: Eine JPEG-Image-Bibliothek, die schnelle Komprimierung und Dekomprimierung von JPEG-Dateien ermöglicht.
  - Installation: `%VCPKG_CMD% install libjpeg-turbo`
  
- **[libtiff](http://www.libtiff.org/)**: Eine Bibliothek zur Verarbeitung von TIFF-Bildern. Sie unterstützt das Lesen und Schreiben von TIFF-Dateien in verschiedenen Farbmodi und Auflösungen.
  - Installation: `%VCPKG_CMD% install libtiff`

## Audio/Video Verarbeitung
- **[FFmpeg](https://ffmpeg.org/)**: Eine plattformübergreifende Lösung zur Aufzeichnung, Konvertierung und Streaming von Audio und Video. Sie unterstützt zahlreiche Formate und Codecs.
  - Installation: `%VCPKG_CMD% install ffmpeg`

## Kompression und Archivierung
- **[zlib](https://zlib.net/)**: Eine weit verbreitete Bibliothek zur Datenkomprimierung. Sie wird oft verwendet, um ZIP-Dateien zu erstellen oder zu entpacken.
  - Installation: `%VCPKG_CMD% install zlib`
  
- **[libzip](https://libzip.org/)**: Wie oben erwähnt, bietet libzip erweiterte Funktionen zur Arbeit mit ZIP-Archiven.
  - Installation: `%VCPKG_CMD% install libzip`

## Text Rendering und Fonts
- **[freetype](https://www.freetype.org/)**: Eine Bibliothek zum Rendern von Schriftarten. Sie unterstützt verschiedene Formate wie TrueType, OpenType und PostScript.
  - Installation: `%VCPKG_CMD% install freetype`
  
- **[harfbuzz](https://harfbuzz.github.io/)**: Eine Schriftlayout-Engine, die für die richtige Darstellung von Text in komplexen Schriftsystemen wie Arabisch oder Devanagari sorgt.
  - Installation: `%VCPKG_CMD% install harfbuzz`

## Dokumenten Rendering und Druck
- **[cairo](https://www.cairographics.org/)**: Eine 2D-Grafikbibliothek, die Vektorgrafiken rendern und drucken kann. Sie wird oft verwendet, um Diagramme, Grafiken und andere komplexe 2D-Bilder zu erzeugen.
  - Installation: `%VCPKG_CMD% install cairo`

## Datenbanken
- **[SQLite](https://www.sqlite.org/)**: Eine leichtgewichtige, serverlose SQL-Datenbank. Ideal für eingebettete Systeme oder Anwendungen, die eine portable Datenbank benötigen.
  - Installation: `%VCPKG_CMD% install sqlite3`
  
- **[MySQL-Connector-C](https://dev.mysql.com/doc/connector-c/en/)**: Eine Client-Bibliothek für MySQL-Datenbanken, die C-basierte Anwendungen mit MySQL-Servern verbindet.
  - Installation: `%VCPKG_CMD% install mysql-connector-c`
  
- **[libpq (PostgreSQL)](https://www.postgresql.org/docs/current/libpq.html)**: Die PostgreSQL C-Client-Bibliothek, die verwendet wird, um Anwendungen mit PostgreSQL-Datenbanken zu verbinden.
  - Installation: `%VCPKG_CMD% install libpq`

## Netzwerk und Protokoll Bibliotheken
- **[Boost.Asio](https://www.boost.org/doc/libs/release/doc/html/boost_asio.html)**: Eine plattformübergreifende C++-Bibliothek für asynchrone Ein-/Ausgabe. Sie wird häufig in Netzwerkanwendungen verwendet.
  - Installation: `%VCPKG_CMD% install boost-asio`

- **[libssh2](https://www.libssh2.org/)**: Eine C-Bibliothek, die das SSH-Protokoll unterstützt und SSH-basierte Verbindungen, einschließlich Dateitransfer und Remote-Kommandos, ermöglicht.
  - Installation: `%VCPKG_CMD% install libssh2`

## JSON Processing Libraries
- **[nlohmann-json](https://github.com/nlohmann/json)**: Eine JSON-Bibliothek für C++, die es ermöglicht, JSON-Daten einfach zu parsen, zu serialisieren und zu manipulieren.
  - Installation: `%VCPKG_CMD% install nlohmann-json`

- **[rapidjson](http://rapidjson.org/)**: Eine schnelle JSON-Bibliothek, die hauptsächlich auf Effizienz und Geschwindigkeit beim Parsen und Serialisieren von JSON-Daten ausgelegt ist.
  - Installation: `%VCPKG_CMD% install rapidjson`

## Grafikbibliotheken
- **[SFML](https://www.sfml-dev.org/)**: Eine plattformübergreifende API zum Entwickeln von Multimedia-Anwendungen wie Spiele, Audio und grafische Programme.
  - Installation: `%VCPKG_CMD% install sfml`

## Mathematische Bibliotheken
- **[Eigen3](https://eigen.tuxfamily.org/dox/)**: Eine C++-Bibliothek für lineare Algebra, die Matrizen- und Vektorrechnungen, Eigenwertberechnungen und mehr unterstützt.
  - Installation: `%VCPKG_CMD% install eigen3`

- **[OpenBLAS](https://www.openblas.net/)**: Eine optimierte BLAS-Bibliothek für lineare Algebra-Operationen, die vor allem in wissenschaftlichen Berechnungen verwendet wird.
  - Installation: `%VCPKG_CMD% install openblas`

## Logging und Formatierung
- **[fmt](https://fmt.dev/latest/index.html)**: Eine Bibliothek für das sichere und schnelle Formatieren von Zeichenfolgen in C++.
  - Installation: `%VCPKG_CMD% install fmt`
  
- **[spdlog](https://github.com/gabime/spdlog)**: Eine schnelle C++-Bibliothek für das Protokollieren von Ereignissen und Debug-Nachrichten in verschiedenen Formaten und Ausgabemedien.
  - Installation: `%VCPKG_CMD% install spdlog`

## Command Line Argument Parsing
- **[TCLAP](http://tclap.sourceforge.net/)**: Eine einfache C++-Bibliothek zur Verarbeitung von Kommandozeilenargumenten.
  - Installation: `%VCPKG_CMD% install tclap`

## Audio Libraries
- **[JUCE](https://juce.com/)**: Ein Framework für Audioanwendungen. JUCE bietet Werkzeuge zur Erstellung von Audio-Plugins, grafischen Benutzeroberflächen und Audioverarbeitung.
  - Installation: `%VCPKG_CMD% install juce`

## Testing Libraries
- **[gtest](https://github.com/google/googletest)**: Google Test ist ein beliebtes C++-Framework zum Schreiben und Ausführen von Unit-Tests.
  - Installation: `%VCPKG_CMD% install gtest`
  
- **[Catch2](https://github.com/catchorg/Catch2)**: Ein weiteres Unit-Test-Framework für C++, das sich durch eine einfache und ausdrucksstarke Syntax auszeichnet.
  - Installation: `%VCPKG_CMD% install catch2`

- **[Doctest](https://github.com/doctest/doctest)**: Eine C++-Testbibliothek, die sich auf Einfachheit und minimalen Overhead konzentriert.
  - Installation: `%VCPKG_CMD% install doctest`

## Weitere Tools und Bibliotheken
- **[protobuf](https://developers.google.com/protocol-buffers)**: Ein Datenserialisierungsformat von Google, das hauptsächlich für die schnelle Kommunikation zwischen Systemen verwendet wird.
  - Installation: `%VCPKG_CMD% install protobuf`

- **[yaml-cpp](https://github.com/jbeder/yaml-cpp)**: Eine YAML-Bibliothek für C++, die es ermöglicht, YAML-Daten zu lesen und zu schreiben.
  - Installation: `%VCPKG_CMD% install yaml-cpp`

- **[TBB (Threading Building Blocks)](https://github.com/oneapi-src/oneTBB)**: Eine plattformübergreifende Bibliothek für parallele Programmierung, die von Intel entwickelt wurde.
  - Installation: `%VCPKG_CMD% install tbb`

- **[jemalloc](http://jemalloc.net/)**: Ein hochleistungsfähiger Speicherallokator, der hauptsächlich in speicherintensiven Anwendungen verwendet wird.
  - Installation: `%VCPKG_CMD% install jemalloc`

- **[tcmalloc](https://github.com/gperftools/gperftools)**: Ein weiterer Speicherallokator, der von Google entwickelt wurde und sich auf Geschwindigkeit und Effizienz konzentriert.
  - Installation: `%VCPKG_CMD% install tcmalloc`

- **[memorypool](https://github.com/microsoft/microsoft-poolallocator)**: Eine Bibliothek für effiziente Speicherverwaltung und -allokation in speicherintensiven Anwendungen.
  - Installation: `%VCPKG_CMD% install memorypool`

- **[boost-test](https://www.boost.org/doc/libs/release/libs/test/doc/html/index.html)**: Ein Test-Framework, das Teil der Boost C++-Bibliothek ist.
  - Installation: `%VCPKG_CMD% install boost-test`

- **[benchmark](https://github.com/google/benchmark)**: Eine Bibliothek zur Durchführung von Benchmarking-Tests, um die Leistung von C++-Code zu messen.
  - Installation: `%VCPKG_CMD% install benchmark`
