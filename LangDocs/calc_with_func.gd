extends Control

func add():
	var num1 = int($TxtNum1.text)
	var num2 = int($TxtNum2.text)
	$LblOppType.text = "+"
	$LblOut.text = "Result: " + str(num1 + num2)

func sub():
	var num1 = int($TxtNum1.text)
	var num2 = int($TxtNum2.text)
	$LblOppType.text = "-"
	$LblOut.text = "Result: " + str(num1 - num2)

func mult():
	var num1 = int($TxtNum1.text)
	var num2 = int($TxtNum2.text)
	$LblOppType.text = "*"
	$LblOut.text = "Result: " + str(num1 * num2)

func sqr():
	var num1 = int($TxtNum1.text)
	var num2 = int($TxtNum2.text)
	$LblOppType.text = "**"
	$LblOut.text = "Result: " + str(num1**num2)

func div():
	var num1 = float($TxtNum1.text)
	var num2 = float($TxtNum2.text)
	$LblOppType.text = "/"
	$LblOut.text = "Result: " + str(num1 / num2)

func MOD():
	var num1 = int($TxtNum1.text)
	var num2 = int($TxtNum2.text)
	$LblOppType.text = "MOD"
	$LblOut.text = "Result: " + str(num1 % num2)


func _on_bth_mult_pressed() -> void:
	mult()


func _on_btn_sub_pressed() -> void:
	sub()


func _on_btn_add_pressed() -> void:
	add()


func _on_btn_mod_pressed() -> void:
	MOD()


func _on_btn_div_pressed() -> void:
	div()


func _on_btn_sqr_pressed() -> void:
	sqr()


func _on_btn_clear_pressed() -> void:
	$LblOppType.text = ""
	$LblOut.text = "Result:"
	$TxtNum1.text = ""
	$TxtNum2.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
