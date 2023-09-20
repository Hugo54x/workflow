# Conversion

## Convert file encoding

```bash
iconv -f UTF-8 -t ISO-8859-1 <input_file> > <output_file>
```

## Convert csv to json in Powershell

```powershell
Import-Csv .\<input_file_name>.csv | ConvertTo-Json | Out-File .\<output_file_name>.json
```
