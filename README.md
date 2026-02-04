# EventOrder

[![Platform](https://img.shields.io/badge/Platform-Windows-blue.svg)]()

Just a quick and simple Delphi VCL program, written in Delphi XE (but compatible with _ANY_ version of Delphi) to show the order of events when starting and closing a VCL app. It would be simple to expand this for your own use as it logs both to a file (in the OnDestroy event) and to a ListBox while visible on the screen.

Here's a quick list of the events tested in the order they appear:

--_Start-Up_--
- FormCreate
- FormShow
- FormActivate
- FormResize
- FormPaint

--_Close-Down_--
- FormQuery
- FormClose
- FormHide
- FormDestroy
