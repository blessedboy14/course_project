unit Elem;

interface

Uses
    System.SysUtils, Vcl.ExtCtrls;

Type
    TNode = class
        private Nick : String;
        private Time : String;
        private Next: TNode;
        public function GetNext(): TNode;
        public procedure SetNext(Next: TNode);
        public constructor NewNode(Nick,Time : String);
        public function GetTime(): string;
        public function GetNick(): String;
        public procedure SetNick(Nick : String);
        public procedure SetTime(Time : String);
    end;

implementation

function TNode.GetTime(): String;
begin
    GetTime := Self.Time;
end;

function TNode.GetNick(): String;
begin
    GetNick := Self.Nick;
end;

procedure TNode.SetTime(Time : String);
begin
    Self.Time := Time;
end;

procedure TNode.SetNick(Nick : String);
begin
    Self.Nick := Nick;
end;

function TNode.GetNext(): TNode;
begin
    GetNext := Self.Next;
end;

procedure TNode.SetNext(Next: TNode);
begin
    Self.Next := Next;
end;

constructor TNode.NewNode(Nick,Time : String);
begin
    Self.Nick := Nick;
    Self.Time := Time;
    Next := nil;
end;

end.
