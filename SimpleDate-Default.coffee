#Terminal Command
command: "date +%A,%B,%e,%Y"

#Refresh time
refreshFrequency: 50000

#Body Style (modeify colors and size here)
style: """
  size =              800px                         //This is just a base for the overall size so everything stays centered

  width:              size 
  margin-left:        -.5 * size                    //Set left edge of widget to be center so it can be easily centered on the page
  text-align:         center

  height:             130px             
  margin-top:         -.5 * 130px
  vertical-align:     middle

  /*POSITION*/
  top:                50%
  left:               50%

  #main
    color:            rgba(255,255,255,0.5)         //rgba(red, green, blue, alpha) 255 max for redgreenblue, alpha parameter is number between 0.0 (fully transparent) & 1.0 (fully opaque)
    font-family:      Helvetica, Helvetica Neue
  	font-weight:      500
    font-size:        64px
  #suffix
  	color:            rgba(255,255,255,0.5)         //rgba(red, green, blue, alpha) 255 max for redgreenblue, alpha parameter is number between 0.0 (fully transparent) & 1.0 (fully opaque)
    font-family:      Helvetica, Helvetica Neue
  	font-weight:      100
    font-size:        46px
  	margin-left:      -10px                         //Forces suffix to be closer to numDate
  #secondary
    color:            rgba(255,255,255,0.5)         //rgba(red, green, blue, alpha) 255 max for redgreenblue, alpha parameter is number between 0.0 (fully transparent) & 1.0 (fully opaque)
    font-family:      Helvetica, Helvetica Neue
    font-weight:      500
    font-size:        64px
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
  #$('#suffix').text suffix      #Add suffix to numDate
  $('#secondary').text bottom   #Add month and year to secondary

