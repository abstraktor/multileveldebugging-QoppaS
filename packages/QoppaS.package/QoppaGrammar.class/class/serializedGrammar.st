as yet unclassified
serializedGrammar
^ 'Qoppa <: BaseGrammar {

File = List*

List
  = ''('' ''vau'' SExpression* '')''  -- vau
  |  ''('' SExpression* '')''  -- list

SExpression
  = atom
  | List

atom
  = number -- number
   | ''\'''' standard_char+ -- symbol
   | ''"'' standard_char+ ''"'' -- string
   | standard_char+  -- variable

lineTerminator
  = ''\n'' | ''\r'' | ''\r\n''| ''\u2028'' | ''\u2029''

number  -- number
    = ''-''? digit+ (''.'' digit+)?

space
  += '';'' (~lineTerminator any)* lineTerminator -- single-line-comment

standard_char
  = letter | digit | '':'' | ''+'' | ''?'' | ''!''
   | ''-'' | ''*'' | ''/'' | ''<'' | ''>'' | ''='' | ''_''}'