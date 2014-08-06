.class public Landroid/support/v8/renderscript/Script$Builder;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mRS:Landroid/support/v8/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 410
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Landroid/support/v8/renderscript/Script$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 412
    return-void
.end method
