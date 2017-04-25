# Desktop

A beginning work into some widgets and seeing where they go if anything at all.  Hopefully it is fruitful and leads to other more interesting paths.

# Date Function & String Format Time (strftime)
%a    Short date, Sun
%A    Long date, Sunday
%b    Short month, Apr
%B    Long month, April
>>%c    Date and Time format such as %a %b % M%:%S %Y, Tue Apr 25 13:15:35 2017
%C    Year divided by 100, 20
%d    Day of the month with zero, 25
%D    Date such as %m/%d/%y, 04/25/17
%e    Day of the month without zero, 1
%E    NOTHING I ASSUME, E
%f    NOTHING I ASSUME, f
%F    Date such as %Y-%m-%d, 2017-04-25
>>%g    ???, 17
>>%G    ???, 2017
%h    Short month; Same as %b, Apr
%H    Hour in 24 hr format with zero, (00...23)
%i    NOTHING I ASSUME, i
%I    Hour in 12 hr format with zero, (01...12)
%j    Day of the year, 115
%J    NOTHING I ASSUME, J
%k    Hour in 24 hr format without zero, (1...23)
%K    NOTHING I ASSUME, K
%l    hour in 12 hr format without zero, (1...12)
%L    NOTHING I ASSUME, L
%m    Month in number format, (01...12)
%M    Minute (00...59)
%n    newline
%N    NOTHING I ASSUME, N
%o    NOTHING I ASSUME, o
%O    NOTHING I ASSUME, O
%p    Locale (AM/PM)
%P    NOTHING I ASSUME, P
%q    NOTHING I ASSUME, q
%Q    NOTHING I ASSUME, Q
%r    Time such as %I:%M:%S %p, 01:28:02 PM
%R    Time such as %H:%M, 13:28
%s    Seconds since Epoch 1970-01-01, 1493153047
%S    Second (00...50)
%t    tab
%T    Time such as %H:%M:%S
%u    Day of the week with Monday as first day of the week, (1...7)
%U    Week number of the year with Sunday as first day of the week, (00...53)
%v    Date such as %e-%b-%Y, 25-Apr-2017
%V    Week number of the year with Monday as first day of the week, (01...53)
%w    Day of the week with Sunday as first day of the week, (0...6)
%W    Week number of the year with Monday as the first day of the week, (00...53)
%x    Date such as %m/%d/%Y, 04/25/2017
>>%X    Time such as %:%M:%S, 13:45:19
%y    Short year, 17
%Y    Long year, 2017
%z    Numeric timezone (-0700)
%Z    Abbreviated timezone (PDT)


**For more information**
man date
man strftime
