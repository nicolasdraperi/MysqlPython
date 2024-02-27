from crud import *

connexion = input("Entrez votre nom : ")
if recup_user_id_by_name(connexion) != None:
    user_id = recup_user_id_by_name(connexion)
    question = input("Que souhaitez-vous faire ?\n"
                     "1. Supprimer une langue\n"
                     "2. Ajouter une nouvelle langue\n"
                     "3. Modifier une langue existante\n"
                     "4. Afficher toutes les langues\n"
                     "5. Afficher les détails d'une langue\n"
                     "6. Afficher tous les logs\n"
                     "Entrez 'off' pour quitter\n"
                     "Votre choix : "
                     )
    while question != "off":
        if question == "1":
            id_langue = show_all_language_id()
            for id in id_langue:
                print(id)
            id_language = int(input("Entrez l'id de la langage que vous voulez supprimer : "))
            delete_language(id_language,user_id)
        elif question == "2":
            name = input("Entrez le nom du language : ")
            date = input("Entrez le date de création du langage : ")
            level = input("Entrez le niveau du langage : ")
            create_language(name, date, level, user_id)
        elif question == "3":
            id_langue = show_all_language_id()
            for id in id_langue:
                print(id)

            id = input("Entrez l'id du language que vous voulez modifier : ")
            name = input("Entrez le nom du language : ")
            date = input("Entrez le date de création du langage : ")
            level = input("Entrez le niveau du langage : ")
            update_language(id,name, date, level, user_id)
        elif question == "4":
            data = show_all_language()
            for elem in data:
                print(elem)
        elif question == "5":
            id_langue = show_all_language_id()
            for id in id_langue:
                print(id)
            id = input("Entrez l'id du language : ")
            data = show_one_language(id)
            print(data)
        elif question == "6":
            data = show_all_log()
            for elem in data:
                print(elem)
        else:
            print("La demande n'a pas été comprise")
        question = input("Que souhaitez-vous faire ?\n"
                         "1. Supprimer une langue\n"
                         "2. Ajouter une nouvelle langue\n"
                         "3. Modifier une langue existante\n"
                         "4. Afficher toutes les langues\n"
                         "5. Afficher les détails d'une langue\n"
                         "6. Afficher tous les logs\n"
                         "Entrez 'off' pour quitter\n"
                         "Votre choix : "
                         )
else:
    pass




