import { app, BrowserWindow } from 'electron';

const createWindow = () => {
	const win = new BrowserWindow({ width: 1000, height: 800 });
	win.loadURL('http://localhost:5173');
};

app.whenReady().then(createWindow);
