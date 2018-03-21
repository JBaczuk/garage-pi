import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)
GPIO.setup(14, GPIO.OUT)

GPIO_14_state = GPIO.LOW

def pushGarageBtn():
    GPIO_14_state = GPIO.HIGH
    GPIO.output(14, GPIO_14_state)
    time.sleep(0.5)
    GPIO_14_state = GPIO.LOW
    GPIO.output(14, GPIO_14_state)

# while True:
#     raw_input("Press Enter to open garage...")
#     pushGarageBtn()