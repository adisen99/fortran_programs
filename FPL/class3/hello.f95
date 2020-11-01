! Fortan Program
! Topics discussed are - character lengths, and the trim command

program hello

implicit none

character(len=15) :: surname, firstname
character(len=6) :: title
character(len=40) :: name
character(len=25) :: greetings

title = 'Mr.'
firstname = 'Aditya'
surname = 'Sengupta'
name = title//firstname//surname
greetings = 'A big hello from me' 

print*, 'This is the output without trim command used -'

print*, 'Here is ', title, firstname, surname

print*, 'This is the output with trim command used -'

print*, 'Here is ',trim(title),' ',trim(firstname),' ',trim(surname)

print*, 'This is the output with only the name variable used -'

print*, 'Here is ', name

print*, greetings

end program hello 
