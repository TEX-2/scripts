# PhyMotionControl

Девайс сервер, который осуществляет подключение к PhyMOTION по IP/TCP - 22222 порт. И принимает команды в соответсвии с PhyLOGIC.

## Свойства (Properties):
 1. ip_addr - IP адрес устройства PhyMOTION, его должен раздать сервер
 2. tcp_port - порт, по умолчанию это 22222

## Команды (Commands):
 1. string sendCMD(string) - отправляет команду формата \<addr\>\<cmd\>, где <addr> значения 0-F, или @. Возвращает ответ устройства
 2. void openConnection(void) - открывает соеденение
 3. void closeConnection(void) - закрывает соеденение
