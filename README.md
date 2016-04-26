ttml2vtt
========

An XSLT to transform subtitle files in TTML/DFXP-format to WebVTT.

Supports linebreaks and italics-tags but no other styling.
Expects timestaps in `begin` and `end`-attributes to have two digits precision for seconds, then appends zero to form three digits milliseconds.

Usage:
`xsltproc ttml2vtt.xslt sub.tt.xml > sub.vtt`

Example input:
```xml
<?xml version='1.0' encoding='utf-8'?>
<tt xmlns="http://www.w3.org/2006/10/ttaf1">
  <body>
    <div>
      <p begin="00:00:00.96" end="00:00:07.12"><i>En fjärils vingslag...</i></p>
      <p begin="00:00:07.28" end="00:00:13.64"><i>...kan utlösa händelser</i>
                <br />
                <i>som skapar kaos världen över.</i></p>
    </div>
  </body>
</tt>
```

Example output:
```
WEBVTT

00:00:00.960 --> 00:00:07.120
<i>En fjärils vingslag...</i>

00:00:07.280 --> 00:00:13.640
<i>...kan utlösa händelser</i>
<i>som skapar kaos världen över.</i>

```
