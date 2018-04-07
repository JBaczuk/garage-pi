import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)
GPIO.setup(22, GPIO.OUT)

GPIO_22_state = GPIO.LOW

def pushGarageBtn():
    GPIO_22_state = GPIO.HIGH
    GPIO.output(22, GPIO_22_state)
    time.sleep(0.5)
    GPIO_22_state = GPIO.LOW
    GPIO.output(22, GPIO_22_state)

# while True:
#     raw_input("Press Enter to open garage...")
#     pushGarageBtn()