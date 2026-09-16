# セキュアなオフライン環境下でも使えるRPAで業務効率化を実現！

- 出典: https://digi-works.co.jp/blog/works/4816/
- 公開日: 2023-02-02
- WP記事ID: 4816

---

![](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/image-1024x660.png)

## クレジットカード事業でのRPA活用

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川今回は、**インターネットに接続できないセキュアなオフライン環境下におけるRPA活用事例**として、クレジットカードに関する事業を展開されているNexus Card株式会社様にお話をお伺いいたします。どうぞよろしくお願いいたします！

よろしくお願いします。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川まずは貴社の事業についてお聞かせください。

主に**個別クレジット（商品やサービス等の購入支払いの立替）**と、**クレジットカード発行**に関する業務を行っています。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
貴社のクレジットカード「Nexus Card」の特徴についても教えていただけますか？

Nexus Cardは**デポジット型のクレジットカード**で、事前にデポジット（保証金）を預け、そのデポジットを上限額として利用できるクレジットカードです。利用時に銀行口座から直接引き落とされるデビットカードとは異なり、デポジットを上限額として通常のクレジットカードとして利用出来ます。登録いただければリボ払いなども可能です。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![nexuscard](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/nexuscard-1024x375.png)＜デポジット型クレジットカード Nexus Card＞

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
個別クレジットやクレジットカード発行はどのように行っているのでしょうか。

個別クレジットは、弊社がお客様に提供しているWeb申込システムから商品やサービス等のお申込みをされると、弊社の基幹システムに申込情報が送信され、審査ののちにお申込みいただいた商品・サービスのご利用が可能となります。クレジットカードの発行も同様で、お客様からカード発行申込時に送信された申込データを審査、カード発行となります。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
そのうち、どのような業務でRPAを活用していらっしゃいますか。

**申込情報の集計やステータス更新、売上情報の加工、SQLを使ったデータ抽出、指定場所に出力されるファイルの指定場所への移動など**の業務で活用しています。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

## オフライン環境での利用と、誰でも使える操作性が導入の決め手に

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
ありがとうございます。RPA導入の目的は何だったのでしょうか。

**手作業による負荷やミスのリスクを減らし付加価値の高い仕事に集中するため**です。２～３年前から自動化や効率化を進めていきたい話はずっとあったのですが、なかなか着手が出来ず…。ご利用申込が増え、いよいよ人的リソースもひっ迫することが現実的に想定されたので導入を検討いたしました。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
貴社の事業特性上、**秘匿性の高い情報の取り扱いやセキュアな環境での活用が可能かどうかというハードルがあったのではないか**と思いますが、**製品選定はどのような基準**で行ったのでしょうか。

製品選定については大きく2つを基準として設けました。まず1つ目ですが、**弊社の基幹システムはインターネットに接続していない閉域網を使っているため、「オフライン環境でのライセンス認証で、弊社が行いたいことが可能であるか」ということが大前提**ということでした。**インターネット接続が必要なクラウド型製品の導入は難しかったため、オフライン環境でも使えるRaQuboが良い**と思いました。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
なるほど、確かにクラウド型、オンプレミス型にはそれぞれの利用メリットがありますが、貴社の場合はセキュアなオフライン環境で使えることが絶対条件となりますね。その条件をクリアした上でもうひとつの基準は何だったのでしょうか？

2つ目は、**プログラミングなどに触れたことがない一般社員が使うこともあるため、初心者でもスムーズに使えるような操作性や利便性を重視**したことです。RPAの代理店に相談し事前にデモを試すなどして、**全て解決ができるRaQuboを導入する**ことに至りました。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
様々な条件下でも”全て解決できる”と思ってくださったんですね！とはいえ、実際に導入されて何か困ったことなどはありませんでしたか・・・？

事前にデモも使わせていただいていたので特になかったですね！**RaQuboのファーストビューは、左にコマンド一覧・右にシナリオという表示でとてもシンプルなので直感的な操作ができて**困ったことはありませんでした。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![RaQuboの操作画面（イメージ）](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/1971f2aac99250ca21cce46edbd8f942-1024x350.png)＜RaQuboの操作画面（イメージ）＞

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
それは良かったです！今後操作性の面で導入をためらわれている企業様でも利用ハードルは低そうでしょうか。

はい、**ITリテラシーが高くなくても関心があれば扱えるものだと思います**。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

## 既に月間約50時間の工数削減を実現し、今後も活用を拡大していく

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
導入の目的だった**負荷やリスク軽減の効果**は出ていますか？

私自身の具体的な業務例を挙げると**毎朝30～40分ほど掛かっていた集計作業は全て自動化し月間10数時間の削減が出来ました**し、現在**RPAを活用している業務全体で申し上げると最大50時間ほどの工数削減が出来ている**と思います。また工数削減という点だけでなく、**決まった時間に、例えば出社した時には既にデータが出来上がっている、というのもRPA活用のメリット**だと感じています。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
分かります！手動ですと、作業を行うタイミングまでも属人化してしまって、ついつい後ろ倒しになってしまうということがありますよね。一方で、RPA活用で**現在または将来的な課題**はありますか。

そうですね、自動化したいことのうち、まだ取り掛かれていないこともあるため、正直当初の目的を100％達成出来たとはいえません。現在は3名が実務で利用しているのですが、**今後RaQubo**を利用出来る・シナリオを作成出来る社員を増やし、もっともっと活用していきたいです。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
RPAを利活用出来る社員様を増やすために、**社内教育は実施されていますか**？

RaQuboを利用出来る社員を増やすことについては、**簡単なシナリオから作成してもらい、変数の設定や分岐条件の考え方などを徐々に覚えてもらう**ようにしています。

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川
実際に自身で手を動かすことがスキル習得の一番の近道ですね。今後RaQubo製品やサポートなどに期待したいこともあれば教えてください。

いつもご丁寧に早く対応していただき感謝しています。機能面で申し上げると2つあって、1つは**シナリオが失敗時のエラー箇所が分かりやすく色が変わるなど可視化されると嬉しい**です。まだRPA経験の浅い社員が利用することもあり、ログを見て理解を深めてもらえればと思いますが、エラー箇所が分かれば失敗時の問題を解決するまでの時間も早くなると思います。もう1点は**シナリオ結果の送付先が複数選べると良い**ですね。現在は送付先が1つのみのためメーリングリストを使用していますが、稼働内容によって通知したい先がそれぞれ異なることがあるため送付先を複数選択できると助かります！

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川ありがとうございます。弊社では**ご利用企業様のご要望を参考に毎月サービスのアップグレードを行っております**ので、今後もお困りごとやご要望がございましたらいつでもお声掛けいただけると嬉しいです。最後に、貴社ビジネスの今後のご展望もお聞かせください。

集客が見込まれる事業の為、今後もより一層質の高いサービスの提供を心がけ、ご満足いただけるよう努めてまいります！

![ご担当者様](https://digi-works.co.jp/blog/wp-content/uploads/2023/01/42770caa396855c9af4fa1dfd532bf64.png)
ご担当者様

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川本日はお話をお伺いさせていただき、ありがとうございました！

![DW黒川](https://digi-works.co.jp/blog/wp-content/uploads/2022/07/8573e8996cd2d1d57663c8b10ed9a8a2.jpg)
DW黒川今回はオフライン環境でRPAを活用されているNexus Card株式会社様にお話しをお伺いしました。インターネットに接続できない環境・PCでの自動化を検討されている方々にも、ぜひご参考にしていただければ幸いです！
