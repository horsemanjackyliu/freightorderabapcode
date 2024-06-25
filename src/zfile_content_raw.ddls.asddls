@EndUserText.label: 'File Content Raw'
define abstract entity zfile_content_raw
{
  filename  : cmis_string;
  mime_type : cmis_string;
  stream    : abap.rawstring(0);
    
}
