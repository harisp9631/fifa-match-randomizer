module ApplicationHelper
 def resolve_class(m)
   case m.result
   when 'tie'
     'yellow'
   when 'home'
     'blue'
   when 'red'
     'red'
   end
 end
end
