unit List;

interface

Uses
    System.SysUtils,Elem, Vcl.ExtCtrls;

Type
    TPlayer = Record
        NickName : String;
        Time : String;
    End;
    TArr = Array of TPLayer;
    TList = class
        private Head: TNode;
        public procedure BuildList(PArr: TArr);
        public constructor NewList;
        public function GetHead() : TNode;
    end;

implementation

constructor TList.NewList;
begin
    Head := nil;
end;

function TList.GetHead() : TNode;
begin
    GetHead := Self.Head;
end;

procedure TList.BuildList(PArr: TArr);
var
    I: Integer;
    Temp, Curr : TNode;
begin
    if Length(PArr) > 1 then
    begin
        Head := TNode.NewNode(PArr[0].NickName, PArr[0].Time);
        Head.SetNext(nil);
        for I := Low(PArr)+1 to High(PArr) do
        begin
            Temp := TNode.Create;
            Temp := TNode.NewNode(PArr[i].NickName,PArr[i].Time);
            Curr := Head;
            while Curr.GetNext() <> nil do
            begin
                Curr := Curr.GetNext();
            end;
            Curr.SetNext(Temp);
        end
    end
    else
    begin
        Head := TNode.NewNode(PArr[0].NickName,PArr[1].Time);
        Head.SetNext(nil);
    end;
end;

end.
