.class Lcom/android/gallery3d/app/MovieActivity$2;
.super Landroid/content/AsyncQueryHandler;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieActivity;->initializeActionBar(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;

.field final synthetic val$actionBar:Landroid/app/ActionBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/content/ContentResolver;Landroid/app/ActionBar;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iput-object p3, p0, Lcom/android/gallery3d/app/MovieActivity$2;->val$actionBar:Landroid/app/ActionBar;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 150
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "displayName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$2;->val$actionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_1
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v1

    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method
