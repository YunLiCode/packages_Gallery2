.class Lcom/android/photos/MultiChoiceManager$BulkDeleteTask;
.super Landroid/os/AsyncTask;
.source "MultiChoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/MultiChoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BulkDeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/android/photos/MultiChoiceManager$Delegate;

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/photos/MultiChoiceManager$Delegate;Ljava/util/List;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/photos/MultiChoiceManager$Delegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/photos/MultiChoiceManager$Delegate;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/photos/MultiChoiceManager$BulkDeleteTask;->mDelegate:Lcom/android/photos/MultiChoiceManager$Delegate;

    .line 193
    iput-object p2, p0, Lcom/android/photos/MultiChoiceManager$BulkDeleteTask;->mPaths:Ljava/util/List;

    .line 194
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 187
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/MultiChoiceManager$BulkDeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "ignored"    # [Ljava/lang/Void;

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/photos/MultiChoiceManager$BulkDeleteTask;->mPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, "path":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/photos/MultiChoiceManager$BulkDeleteTask;->mDelegate:Lcom/android/photos/MultiChoiceManager$Delegate;

    invoke-interface {v2, v1}, Lcom/android/photos/MultiChoiceManager$Delegate;->deleteItemWithPath(Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    .end local v1    # "path":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
