import subprocess

command = "python3 /home/dfyz/botRoll/bot.py 6274389733:AAHaYmqHDmcdhJcfwtVwF2EH2neaGrNIUdE"

# Выполнение команды
result = subprocess.run(command, shell=True, capture_output=True, text=True)

# Проверка статуса выполнения команды
if result.returncode == 0:
    # Команда успешно выполнена
    output = result.stdout
    print(f"Результат команды:\n{output}")
else:
    # Ошибка при выполнении команды
    error = result.stderr
    print(f"Ошибка при выполнении команды:\n{error}")
