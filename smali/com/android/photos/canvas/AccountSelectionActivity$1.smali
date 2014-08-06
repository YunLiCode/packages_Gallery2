.class Lcom/android/photos/canvas/AccountSelectionActivity$1;
.super Ljava/lang/Object;
.source "AccountSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/canvas/AccountSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/canvas/AccountSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/photos/canvas/AccountSelectionActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/photos/canvas/AccountSelectionActivity$1;->this$0:Lcom/android/photos/canvas/AccountSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 52
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "is_configured"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    iget-object v3, p0, Lcom/android/photos/canvas/AccountSelectionActivity$1;->this$0:Lcom/android/photos/canvas/AccountSelectionActivity;

    invoke-virtual {v3}, Lcom/android/photos/canvas/AccountSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 55
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/photos/data/PhotoProvider$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    .local v0, "modifyUri":Landroid/net/Uri;
    invoke-virtual {v1, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    return-void
.end method
