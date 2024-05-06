from scapy.all import ARP, Ether, srp
import subprocess

def determine_IP_Range(OS="Windows"):
    IPv4_Addresses = {}

    # Get local IPv4 addresses using ipconfig on Windows
    if OS == "Windows":
        ipconfig_output = subprocess.run(["ipconfig" if OS == "Windows" else "ifconfig"], capture_output=True, text=True).stdout

        lines = ipconfig_output.split("\n")

        for i in range(len(lines)):
            line = lines[i].strip()
            if i + 1 < len(lines) and ("adapter" in line):
                interface_name = line

            elif "IPv4 Address" in line:
                ipv4_address = line.split(":")[1].strip()
                if interface_name:
                    IPv4_Addresses[interface_name] = ipv4_address

    print("Which adapter do you want to use?\n")
    for index, (key, value) in enumerate(IPv4_Addresses.items()): 
            print(f"[{index}] {key} {value}")

    selection = input()

    while not selection.isdigit() or int(selection) < 0 or int(selection) >= len(IPv4_Addresses):
        print("Invalid input.")
        selection = input()

    selection = int(selection)

    chosen_Adapter = list(IPv4_Addresses.keys())[int(selection)]

    return chosen_Adapter


print(determine_IP_Range()) 
