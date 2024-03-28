# TelegramNotifier.py
import requests
import os
from dotenv import load_dotenv

load_dotenv()

TOKEN = os.getenv("TELEGRAM_TOKEN")
CHAT_ID = os.getenv("CHAT_ID")


def send_telegram_message(message):
    token = TOKEN
    url = f'https://api.telegram.org/bot{token}/sendMessage'
    data = {'chat_id': CHAT_ID, 'text': message}
    requests.post(url, data=data)
