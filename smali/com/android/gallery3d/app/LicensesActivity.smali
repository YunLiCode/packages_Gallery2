.class public Lcom/android/gallery3d/app/LicensesActivity;
.super Landroid/app/Activity;
.source "LicensesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/LicensesActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/gallery3d/app/LicensesActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 33
    const v1, 0x7f0a006d

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/LicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 34
    .local v0, "webView":Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/licenses.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 35
    return-void
.end method
