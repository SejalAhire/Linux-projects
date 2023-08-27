

#!/bin/bash
#exchange rates(1 unit of currency1=rate units of cuurency2)
eur=0.011
jpy=1.77
usd=0.0121

echo "CURRENCY CONVERTER FOR INR"
echo "  "
echo "your initial currency is INR"
read input_cur
echo "Enter Amount"
read amt
echo "  "
echo "Select output currency"
echo "1.INR"
echo "2.EUR"
echo "3.JPY"
echo "4.USD"
read output_cur

converted_amt=0

if [ $input_cur -eq 1 ] ; then
        if [ $output_cur -eq 1 ]; then
                converted_amt=$amt
        elif [ $output_cur -eq 2 ]; then
                converted_amt=$(echo "scale=2; $amt * $eur" | bc)
        elif [ $output_cur -eq 3 ]; then
                converted_amt=$(echo "scale=2; $amt * $jpy" | bc)
        elif [ $output_cur -eq 4 ]; then
                converted_amt=$(echo "scale=2; $amt * $usd" | bc)
        fi
fi
echo "  "
echo "$amt CONVERTED AMOUNT IS : $converted_amt"
