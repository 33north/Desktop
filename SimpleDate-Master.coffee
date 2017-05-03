#Terminal Command
command: "date +%A,%B,%e,%Y"

###
Date terminal formatting
%a    Short date, Sun
%A    Long date, Sunday
%b    Short month, Apr
%B    Long month, April
%d    Day of the month with zero, 25
%e    Day of the month without zero, 1
>%F    Date such as %Y-%m-%, 2017-04-25
%D    Date such as %m/%d/%y, 04/25/17
%x    Date such as %m/%d/%Y, 04/25/2017
>%v    Date such as -%b-%Y 
%j    Day of the year, 115
%m    Month in number format, (01...12)
%u    Day of the week, 2 (because twoday is Tuesday)
%V    Week number of the year with Monday as first day of the week, (01...53)
%y    Short year, 17
%Y    Long year, 2017

Time terminal formatting
%H    Hour in 24 hr format with zero, (00...23)
%I    Hour in 12 hr format with zero, (01...12)
%k    Hour in 24 hr format without zero, (1...23)
%l    hour in 12 hr format without zero, (1...12)
%M    Minute (00...59)
%p    Locale (AM/PM)
%S    Second (00...50)
>%T    Time such as %:%M:%S
>%X    Time such as %:%M:%S
>%r    Time such as %:%M, 13:28
%R    Time such as %I:%M:%S %p, 01:28:02 PM
%z    Numeric timezone (-0700)
%Z    Abbreviated timezone (PDT)

>%c    Date and Time format such as %a %b % % %Y,Tue Apr 25 13:15:35 2017

%t    tab
%n    newline
###

#Refresh time
refreshFrequency: 50000

#Body Style (modeify colors and size here)
style: """
  size = 800px                //This is just a base for the overall size so everything stays centered

  width: size 
  margin-left: -.5 * size     //Set left edge of widget to be center so it can be easily centered on the page
  text-align: center


  height: 130px             
  margin-top: -.5 * 130px
  vertical-align: middle


  /*POSITION*/
  top: 50%
  left: 50%

  /*COLORS*/
  primaryColor = rgba(255,255,255,0.55)
  secondaryColor = rgba(255,255,255,0.35)


  font-family: Helvetica Neue
  font-weight: 100
  font-size: 46px

  #main
    color: primaryColor
    font-size: 64px

  #suffix
  	color: primaryColor
  	font-weight: 100
  	margin-left: -15px         //Forces suffix to be closer to numDate

  #secondary
    font-weight: 100
  	color: secondaryColor
"""


render: (output) -> """
  <div>
    <span id ="main"></span>    <!--Primary date info (Day of week, numDate)-->
    <sup id="suffix"></sup>     <!--Suffix for numDate-->
  </div>
  <div id="secondary"></div>    <!--Additional date info (month, year)-->

"""

#Update Function
update: (output) ->
  dateInfo = output.split(',')

  day = dateInfo[0]
  month = dateInfo[1]
  numDate = parseInt(dateInfo[2])
  year = dateInfo[3]

  secondDigit = numDate%10

  # This switch determines the appropriate suffix for the numDate:
  suffix = switch
  	when numDate is 1 then 'st'
  	when numDate is 2 then 'nd'
  	when numDate is 3 then 'rd'
  	when numDate < 21 then 'th'
  	when numDate is 21 then 'st'
  	when numDate is 22 then 'nd'
  	when numDate is 23 then 'rd'
  	when numDate < 31 then 'th'
  	when numDate is 31 then 'st'
  	else 'ERROR'

  top = day+" the "+numDate
  bottom = month+", "+year

  $('#main').text top           #Add day and numDate to main
  $('#suffix').text suffix      #Add suffix to numDate
  $('#secondary').text bottom   #Add month and year to secondary

