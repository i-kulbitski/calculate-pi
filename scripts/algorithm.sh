#!/bin/bash
# UNCOMMENT THE FOLLOWING LINE TO GET A MORE PRECISE CALCULATION OF PI. ALSO REMOVE THE PREVIOUS ECHO STATEMENTS.
echo "This is Pi, no kidding, this time for sure:"
echo "scale=1000; 4*a(1)" | bc -l | tee report.txt
