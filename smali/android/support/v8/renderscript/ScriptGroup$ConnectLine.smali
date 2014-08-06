.class Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectLine"
.end annotation


# instance fields
.field mAllocationType:Landroid/support/v8/renderscript/Type;

.field mFrom:Landroid/support/v8/renderscript/Script$KernelID;

.field mToF:Landroid/support/v8/renderscript/Script$FieldID;

.field mToK:Landroid/support/v8/renderscript/Script$KernelID;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$FieldID;)V
    .locals 0
    .param p1, "t"    # Landroid/support/v8/renderscript/Type;
    .param p2, "from"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/support/v8/renderscript/Script$FieldID;

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/support/v8/renderscript/Script$KernelID;

    .line 65
    iput-object p3, p0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;

    .line 66
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/support/v8/renderscript/Type;

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$KernelID;)V
    .locals 0
    .param p1, "t"    # Landroid/support/v8/renderscript/Type;
    .param p2, "from"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/support/v8/renderscript/Script$KernelID;

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/support/v8/renderscript/Script$KernelID;

    .line 59
    iput-object p3, p0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;

    .line 60
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/support/v8/renderscript/Type;

    .line 61
    return-void
.end method
