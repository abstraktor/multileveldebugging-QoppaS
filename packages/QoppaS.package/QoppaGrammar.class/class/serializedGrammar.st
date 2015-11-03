as yet unclassified
serializedGrammar
^ 'Qoppa <: BaseGrammar {

File = List*

List = ''('' SExpression* '')''

SExpression
  = atom
  | List

atom
  = number -- number
   | standard_char+  -- symbol

number  -- number
    = ''-''? digit+ (''.'' digit+)?

standard_char
  = letter | digit | '':'' | ''+'' | ''?'' | ''!''
   | ''-'' | ''*'' | ''/'' | ''<'' | ''>'' | ''=''


space
  += '';'' (~lineTerminator _)* lineTerminator -- single-line-comment

lineTerminator
  = ''\n'' | ''\r'' | ''\r\n''| ''\u2028'' | ''\u2029''
}'