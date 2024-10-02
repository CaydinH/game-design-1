extends Control

var num1 = $TxtNum1.text
var num2 = $TxtNum2.text

func add():
	$LabelOppType.text = "+"
	$LblOut.text = num1 + num2

func sub():
	$LabelOppType.text = "-"
	$LblOut.text = num1 - num2

func mult():
	$LabelOppType.text = "*"
	$LblOut.text = num1 * num2

func sqr():
	$LabelOppType.text = "**"
	$LblOut.text = num1**num2

func div():
	$LabelOppType.text = "/"
	$LblOut.text = num1 / num2

func MOD():
	$LblOppType.text = "MOD"
	$LblOut.text = num1 % num2


func _on_bth_mult_pressed() -> void:
	mult()


func _on_btn_sub_pressed() -> void:
	sub()
