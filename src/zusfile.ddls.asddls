@EndUserText.label: 'zusfile'
define abstract entity zusfile
{
  @Semantics.largeObject: { mimeType: 'MimeType',
  fileName   : 'FileName' ,
  acceptableMimeTypes: ['image/png','image/jpeg'],
  contentDispositionPreference: #ATTACHMENT
  }
  attachment : /dmo/attachment;
  @Semantics.mimeType: true
  mimetype   : /dmo/mime_type;
  filename   : /dmo/filename;
}
