.class Lcom/android/gallery3d/settings/GallerySettings$1;
.super Landroid/os/Handler;
.source "GallerySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/settings/GallerySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/settings/GallerySettings;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/settings/GallerySettings;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/gallery3d/settings/GallerySettings$1;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/settings/GallerySettings$1;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings$1;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    iget-object v2, p0, Lcom/android/gallery3d/settings/GallerySettings$1;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    const v3, 0x7f0b01a8

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/settings/GallerySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/settings/GallerySettings$1;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    const v4, 0x7f0b01a4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/settings/GallerySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    # setter for: Lcom/android/gallery3d/settings/GallerySettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->access$002(Lcom/android/gallery3d/settings/GallerySettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/settings/GallerySettings$1;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    # getter for: Lcom/android/gallery3d/settings/GallerySettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/settings/GallerySettings;->access$000(Lcom/android/gallery3d/settings/GallerySettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/settings/GallerySettings$1;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    # getter for: Lcom/android/gallery3d/settings/GallerySettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/settings/GallerySettings;->access$000(Lcom/android/gallery3d/settings/GallerySettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/settings/GallerySettings$1;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/gallery3d/settings/GallerySettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->access$002(Lcom/android/gallery3d/settings/GallerySettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/settings/GallerySettings$1;->this$0:Lcom/android/gallery3d/settings/GallerySettings;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/accounts/Account;

    check-cast v0, [Landroid/accounts/Account;

    # invokes: Lcom/android/gallery3d/settings/GallerySettings;->updateAccountInfo([Landroid/accounts/Account;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/settings/GallerySettings;->access$100(Lcom/android/gallery3d/settings/GallerySettings;[Landroid/accounts/Account;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
