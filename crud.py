import mysql.connector


def create_connection():
    try:
        cnx = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="pythonbdd"
        )
        if cnx.is_connected():
            return cnx

    except mysql.connector.Error as err:
        print("Erreur lors de la connexion à MySQL", err)
    finally:
        pass


def delete_language(id_language, id_user):
    conn = create_connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            sql = "Delete FROM langue WHERE id = %s"
            cursor.execute(sql, (id_language,))

            user_name = recup_user_name(id_user)
            log = "Insert into log (message) value (%s ' a supprimé le language numéro %s dans la table language')"
            cursor.execute(log, (user_name, id_language))

            conn.commit()
            print("Language", id_language, "a été supprimé de la table language")
        except mysql.connector.Error as err:
            print("Erreur lors de l'ajout", err)
        finally:
            cursor.close()
            conn.close()


def create_language(name, date, level, id_user):
    conn = create_connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            sql = "INSERT INTO langue (nom, date, level) VALUES (%s, %s, %s)"
            cursor.execute(sql, (name, date, level))

            user_name = recup_user_name(id_user)
            log = "Insert into log (message) value (%s ' a ajouté le language ' %s ' dans la table language')"
            cursor.execute(log, (user_name, name))

            conn.commit()
            print("Language", name, "a été ajouté de la table language")
        except mysql.connector.Error as err:
            print("Erreur lors de l'ajout", err)
        finally:
            cursor.close()
            conn.close()


def update_language(id_language, name, date, level, id_user):
    conn = create_connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            if name != None and date != None and level != None:
                sql = "Update langue SET nom = %s, date = %s, level = %s WHERE id = %s"
                cursor.execute(sql, (name, date, level, id_language))

                user_name = recup_user_name(id_user)
                log = "Insert into log (message) value (%s ' a modifié le language ' %s ' dans la table language')"
                cursor.execute(log, (user_name, name))

                conn.commit()
                print("Language", name, "a été modifié")
            elif name != None and date != None and level == None:
                sql = "Update langue SET nom = %s, date = %s WHERE id = %s"
                cursor.execute(sql, (name, date, id_language))

                user_name = recup_user_name(1)
                log = "Insert into log (message) value (%s ' a modifié le language ' %s ' dans la table language')"
                cursor.execute(log, (user_name, name))

                conn.commit()
                print("Language", name, "a été modifié")
            elif name != None and date == None and level == None:
                sql = "Update langue SET nom = %s WHERE id = %s"
                cursor.execute(sql, (name, id_language))

                user_name = recup_user_name(1)
                log = "Insert into log (message) value (%s ' a modifié le language ' %s ' dans la table language')"
                cursor.execute(log, (user_name, name))

                conn.commit()
                print("Language", name, "a été modifié")
        except mysql.connector.Error as err:
            print("Erreur lors de l'ajout", err)
        finally:
            cursor.close()
            conn.close()


def show_all_language():
    conn = create_connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("select nom,date from langue")
            result = cursor.fetchall()
            return result
        except mysql.connector.Error as err:
            print("Erreur lors de la selection", err)
            return None
        finally:
            conn.close()


def show_one_language(id_langue):
    conn = create_connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            sql = "select nom,date from langue where id = %s"
            cursor.execute(sql, (id_langue,))
            result = cursor.fetchall()
            return result
        except mysql.connector.Error as err:
            print("Erreur lors de la selection", err)
            return None
        finally:
            conn.close()


def recup_user_name(user_id):
    conn = create_connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            sql = "SELECT name FROM user WHERE id = %s"
            cursor.execute(sql, (user_id,))
            result = cursor.fetchone()

            if result:
                user_name = result[0]
                return user_name
            else:
                print("Aucun utilisateur trouvé avec l'ID", user_id)
                return None

        except mysql.connector.Error as err:
            print("Erreur lors de la récupération du nom de l'utilisateur", err)

        finally:
            cursor.close()
            conn.close()


def recup_user_id_by_name(user_name):
    conn = create_connection()
    if conn is not None:

        try:
            cursor = conn.cursor()
            sql = "select id from user where name = %s"
            cursor.execute(sql, (user_name,))
            result = cursor.fetchone()

            if result:
                user_id = result[0]
                return user_id
            else:
                print("Aucun utilisateur trouvé avec le nom", user_name)
                return None

        except mysql.connector.Error as err:
            print("Erreur lors de la récupération de l'ID de l'utilisateur", err)

        finally:
            cursor.close()
            conn.close()

def show_all_log():
    conn = create_connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("select id,message from log")
            result = cursor.fetchall()
            return result
        except mysql.connector.Error as err:
            print("Erreur lors de la selection", err)
            return None
        finally:
            conn.close()

print(recup_user_id_by_name("julien"))
