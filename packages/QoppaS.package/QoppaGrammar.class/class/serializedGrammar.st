as yet unclassified
serializedGrammar
^ 'Qoppa <: BaseGrammar {

File = SExpression*

List
  = ''('' ''vau'' SExpression* '')''  -- vau
  |  ''('' SExpression* '')''  -- list
  |  ''('' SExpression+ ''.'' SExpression '')'' -- explicit_cdr

SExpression
  = List   -- list
   | atom -- atom
   | ''\'''' SExpression -- simple_quoted
   | ''`'' SExpression  -- quasi_quoted

atom
  = number -- number
   | (''\'''' | ''#'') standard_char+ -- symbol
   | ''"'' (escaped_char|standard_char|space)+ ''"'' -- string
   | ''null'' ~ standard_char -- null
   | standard_char+  -- variable

escaped_char 
  = ''\\\\'' -- backslash
   | ''\\'' standard_char -- escaped

lineTerminator
  = ''\n'' | ''\r'' | ''\r\n''| ''\u2028'' | ''\u2029''

number  -- number
    = ''-''? digit+ (''.'' digit+)?

space
  += '';'' (~lineTerminator any)* -- single-line-comment

standard_char
  = letter | digit | '':'' | ''+'' | ''?'' | ''!''
   | ''-'' | ''*'' | ''/'' | ''<'' | ''>'' | ''='' | ''_''}'
