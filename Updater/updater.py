import os
import time

keys = "000000000128384000010400f344ac4f82f000000000000000000000000000000000000000000000000"

print("Type version ID to update to")
ver = input()
+
print("Type " + ver + " update key")
key = input()

if key in keys:
    print("Valid update key. Generating manifest data to start the update...")
    time.sleep(5)
else:
    print("Invalid key. Aborting process...")
    time.sleep(3)

print("Installing " + ver + ".config")
time.sleep(5)
print("Installing " + ver + ".upd_1")
time.sleep(0.1)
print("Installing " + ver + ".upd_2")
time.sleep(0.1)
print("Installing " + ver + ".upd_3")
time.sleep(0.1)
print("Installing " + ver + ".upd_4")
time.sleep(0.1)
print("Installing " + ver + ".upd_5")
time.sleep(0.1)
print("Installing " + ver + ".upd_6")
time.sleep(0.1)
print("Installing " + ver + ".upd_7")
time.sleep(0.1)
print("Installing " + ver + ".cache")
time.sleep(0.1)

stage = 1

print("Applying update file: stage " + stage)
stage = stage + 1
time.sleep(0.1)