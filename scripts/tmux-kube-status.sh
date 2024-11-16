CURRENT_CONTEXT=$(kubectl config current-context)
case $CURRENT_CONTEXT in
    "orbstack")
        ENV="local"
        ;;
   "default")
       ENV="lab"
       ;;
#    "main-cluster-prod-aks")
#        ENV="prod"
#        ;;
    *)
        ENV="unknown"
        ;;
esac

case $ENV in
    "local")
        echo "#[fg=colour10] LOCAL 🌱 "
        ;;
   "lab")
       echo "#[fg=color226] LAB 🚜 "
       ;;
#    "prod")
#        echo "#[fg=color0,bg=colour160] PROD ⚠️  "
#        ;;
    "unknown")
        echo " ?? ❌ "
        ;;
esac
