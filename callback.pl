$param=1;
my $ccc=&function( $param, \&func_kubun2 ); # 関数リファレンスを渡す
print $ccc;

sub function {
    my ($param,$coderef)=@_;
    # 共通処理…
    # 呼び出し元の要件に基づく処理は、関数のオブジェクトを渡す。
    if ( $coderef ) {
        $coderef->($param);
    } else {
        # デフォルトの処理
    }
}

sub func_kubun2{
    my $aaa=@_;
    $bbb=$aaa+$aaa;
#    return $bbb;
}
