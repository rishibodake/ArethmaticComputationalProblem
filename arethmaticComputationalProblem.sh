#!/bin/bash -x

#Discreiption:This problem computes different arithmetic expressions and Sorts the results
#Author:Hrishikesh M Bodake
#Since:March 5 2020 /Thursday

function getInputs(){
	read -p "Enter first Number: " firstNumber
	read -p "Enter second Number: " secondNumber
	read -p "Enter third Number: " thirdNumber
}
function firstExpression(){
	#Exrpession is a+b*c
	getInputs
	firstResult=$((($firstNumber+$secondNumber*$thirdNumber)))
}
function secondExpression(){
	#Expression is a*b+c
	getInputs
	secondResult=$((($firstNumber*$secondNumber+$thirdNumber)))
}
function thirdExpression(){
	#Expression is c+a/b
	getInputs
	thirdResult=`expr "scale=2;$thirdNumber+$firstNumber/$secondNumber" | bc -l`
}
function fourthExpression(){
	#Expression is a%b+c
	getInputs
	fourthResult=`expr "scale=2;$firstNumber%$secondNumber+$thirdNumber" | bc -l`
}
fourthExpression


