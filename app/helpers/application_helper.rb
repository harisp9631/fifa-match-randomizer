module ApplicationHelper
 def resolve_class(m)
   case m.result
   when 'tie'
     'yellow'
   when 'home'
     'blue'
   when 'away'
     'red'
   end
 end
end
