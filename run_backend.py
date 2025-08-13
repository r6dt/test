#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Скрипт для запуска бэкенда GAG Pet Trading Platform (Flask версия)
"""

import os
import sys
import subprocess
import time
import signal
import platform
from pathlib import Path

class BackendRunner:
    def __init__(self):
        self.process = None
        self.backend_dir = Path("backend")
        self.server_file = self.backend_dir / "app.py"
        self.requirements_file = self.backend_dir / "requirements.txt"
        
    def check_dependencies(self):
        """Проверяет наличие необходимых файлов и зависимостей"""
        print("🔍 Проверка зависимостей...")
        
        if not self.backend_dir.exists():
            print("❌ Папка 'backend' не найдена!")
            return False
            
        if not self.server_file.exists():
            print("❌ Файл 'backend/app.py' не найден!")
            return False
            
        if not self.requirements_file.exists():
            print("❌ Файл 'backend/requirements.txt' не найден!")
            return False
            
        print("✅ Все необходимые файлы найдены")
        return True
    
    def install_dependencies(self):
        """Устанавливает Python зависимости"""
        print("📦 Установка зависимостей...")
        
        try:
            # Переходим в папку backend
            os.chdir(self.backend_dir)
            
            # Проверяем, установлен ли pip
            result = subprocess.run([sys.executable, "-m", "pip", "--version"], 
                                  capture_output=True, text=True)
            if result.returncode != 0:
                print("❌ pip не установлен! Установите Python и pip")
                return False
            
            # Устанавливаем зависимости
            print("🔄 Установка Python пакетов...")
            result = subprocess.run([sys.executable, "-m", "pip", "install", "-r", "requirements.txt"], 
                                  capture_output=True, text=True)
            
            if result.returncode == 0:
                print("✅ Зависимости установлены успешно")
                return True
            else:
                print(f"❌ Ошибка установки зависимостей: {result.stderr}")
                return False
                
        except Exception as e:
            print(f"❌ Ошибка при установке зависимостей: {e}")
            return False
        finally:
            # Возвращаемся в корневую папку
            os.chdir("..")
    
    def start_server(self):
        """Запускает Flask сервер"""
        print("🚀 Запуск Flask сервера...")
        
        try:
            # Переходим в папку backend
            os.chdir(self.backend_dir)
            
            # Запускаем Flask сервер
            self.process = subprocess.Popen(
                [sys.executable, "app.py"],
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                universal_newlines=True,
                bufsize=1
            )
            
            print("✅ Flask сервер запущен!")
            print("🌐 Frontend: http://localhost:3001")
            print("📊 API: http://localhost:3001/api")
            print("🔍 Health check: http://localhost:3001/api/health")
            print("\n📝 Логи сервера:")
            print("-" * 50)
            
            # Читаем вывод сервера в реальном времени
            for line in iter(self.process.stdout.readline, ''):
                if line:
                    print(line.rstrip())
                    
        except KeyboardInterrupt:
            print("\n🛑 Остановка сервера...")
            self.stop_server()
        except Exception as e:
            print(f"❌ Ошибка запуска сервера: {e}")
            return False
        finally:
            # Возвращаемся в корневую папку
            os.chdir("..")
    
    def stop_server(self):
        """Останавливает сервер"""
        if self.process:
            try:
                self.process.terminate()
                self.process.wait(timeout=5)
                print("✅ Сервер остановлен")
            except subprocess.TimeoutExpired:
                self.process.kill()
                print("⚠️ Сервер принудительно остановлен")
            except Exception as e:
                print(f"❌ Ошибка при остановке сервера: {e}")
    
    def run(self):
        """Основной метод запуска"""
        print("🎮 GAG Pet Trading Platform - Flask Backend Runner")
        print("=" * 50)
        
        # Проверяем зависимости
        if not self.check_dependencies():
            return False
        
        # Устанавливаем Python пакеты
        if not self.install_dependencies():
            return False
        
        # Запускаем сервер
        try:
            self.start_server()
        except KeyboardInterrupt:
            print("\n👋 До свидания!")
        
        return True

def main():
    """Главная функция"""
    runner = BackendRunner()
    
    # Обработка сигналов для корректного завершения
    def signal_handler(signum, frame):
        print("\n🛑 Получен сигнал остановки...")
        runner.stop_server()
        sys.exit(0)
    
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)
    
    # Запускаем бэкенд
    success = runner.run()
    
    if not success:
        print("\n❌ Не удалось запустить бэкенд")
        sys.exit(1)

if __name__ == "__main__":
    main() 