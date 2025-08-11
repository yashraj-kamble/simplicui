-- Macro script for key: a
-- This script is executed when 'a' is pressed

print("Key a was pressed!")

-- Insert your macro code here
-- Examples:

-- os.execute("echo 'Hello from a'")
-- os.execute("notify-send 'Macro' 'Key a pressed'")
os.execute("xdotool mousemove 500 956 mousedown 1")
-- os.execute("xdotool key ctrl+alt+t")
--os.execute("sleep 2")
-- For more complex actions:
os.execute("xdotool mousemove 600 1000 mouseup 1")
-- os.execute("firefox https://google.com")
-- os.execute("code ~/Documents")

-- To run a command asynchronously (non-blocking):
-- run_command_async("konsole")
-- run_command_async("firefox https://google.com")

-- Clipboard operations:
-- To get clipboard content:
-- local clipboard_content = get_clipboard()
-- print("Clipboard content: " .. clipboard_content)

-- To set clipboard content:
-- set_clipboard("Hello from Lua!")
-- print("Clipboard content set to 'Hello from Lua!'")

-- To insert text at cursor position (requires xdotool):
-- insert_text("This text will be typed at the cursor.")

-- To run a shell command and get its output:
-- local output = run_command("echo Hello from Lua!")
-- print("Command output: " .. output)
