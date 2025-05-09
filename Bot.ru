import os
from telegram import Update
from telegram.ext import ApplicationBuilder, CommandHandler, ContextTypes

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("Привет! Отправь мне ссылку на товар, и я проведу аудит.")

if __name__ == '__main__':
    application = ApplicationBuilder().token(os.environ["BOT_TOKEN"]).build()
    application.add_handler(CommandHandler("start", start))
    application.run_polling()
