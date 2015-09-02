require 'curses'
include Curses

def show_message(message)
  width = message.length + 6

  win = Window.new(5, width,
               (lines - 5) / 2, (cols - width) / 2)

  win.box('|', '-')
  win.setpos(2, 3)
  win.addstr(message)
  win.refresh
  win.getch
  win.close
end

def read_file(path)
  f = File.open(path)
  val = f.readlines
  f.close
  val
end

def albums
  read_file File.join(File.dirname(__FILE__),'..','data','albums.md')
end

def compliments
  read_file File.join(File.dirname(__FILE__),'..','data','compliments.md')
end

init_screen
begin
  crmode
  setpos((lines - 5) / 2, (cols - 10) / 2)
  addstr("Hit any key")
  refresh
  getch

  addstr("Would you like to see albums (a) or compliments (c)?")
  refresh
  input = getch

  cons = 1
  if input == 'a'
    iterator = albums
    cons = 5
  elsif input == 'c'
    iterator = compliments
  end

  (iterator || []).each_cons(cons) do |list|
    addstr list.join(',')
    refresh
  end

ensure
  close_screen
end
