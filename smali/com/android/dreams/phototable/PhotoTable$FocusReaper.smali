.class Lcom/android/dreams/phototable/PhotoTable$FocusReaper;
.super Ljava/lang/Object;
.source "PhotoTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FocusReaper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$FocusReaper;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$FocusReaper;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoTable;->clearFocus()V

    .line 70
    return-void
.end method
