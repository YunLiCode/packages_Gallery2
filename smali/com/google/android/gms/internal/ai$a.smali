.class final Lcom/google/android/gms/internal/ai$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ai$a$a;
    }
.end annotation


# instance fields
.field private final bA:Ljava/lang/String;

.field private final bB:Lcom/google/android/gms/internal/ai$a$a;

.field private final bC:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ah",
            "<*>.e;>;"
        }
    .end annotation
.end field

.field private bD:Z

.field private bE:Landroid/os/IBinder;

.field private bF:Landroid/content/ComponentName;

.field final synthetic bG:Lcom/google/android/gms/internal/ai;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ai;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ai$a;->bG:Lcom/google/android/gms/internal/ai;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ai$a;->bA:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ai$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ai$a$a;-><init>(Lcom/google/android/gms/internal/ai$a;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bB:Lcom/google/android/gms/internal/ai$a$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bC:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ai$a;->mState:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ai$a;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ai$a;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ai$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ai$a;->bF:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ai$a;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ai$a;->bE:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ai$a;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bC:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ah$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ah",
            "<*>.e;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bC:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/ah$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ah",
            "<*>.e;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bC:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ai$a;->bD:Z

    return-void
.end method

.method public c(Lcom/google/android/gms/internal/ah$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ah",
            "<*>.e;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bC:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bE:Landroid/os/IBinder;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bF:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ai$a;->mState:I

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ai$a;->bD:Z

    return v0
.end method

.method public u()Lcom/google/android/gms/internal/ai$a$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bB:Lcom/google/android/gms/internal/ai$a$a;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bA:Ljava/lang/String;

    return-object v0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$a;->bC:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method
