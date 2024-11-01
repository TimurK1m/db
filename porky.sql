PGDMP  9    2                |            porky    16.4    16.4 .    -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            0           1262    16397    porky    DATABASE     }   CREATE DATABASE porky WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Kazakhstan.1251';
    DROP DATABASE porky;
                postgres    false            1           0    0    DATABASE porky    COMMENT     +   COMMENT ON DATABASE porky IS 'very funny';
                   postgres    false    4912            �            1259    24579    airline    TABLE     /  CREATE TABLE public.airline (
    airline_id integer NOT NULL,
    airline_code character varying(30) NOT NULL,
    airline_name character varying(50) NOT NULL,
    airline_country character varying(50) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.airline;
       public         heap    postgres    false            �            1259    24582    airport    TABLE     J  CREATE TABLE public.airport (
    airport_id integer NOT NULL,
    airport_name character varying(100) NOT NULL,
    country character varying(50) NOT NULL,
    state character varying(50),
    city character varying(50) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);
    DROP TABLE public.airport;
       public         heap    postgres    false            �            1259    24588    baggage    TABLE     �   CREATE TABLE public.baggage (
    baggage_id integer NOT NULL,
    weight_in_kg numeric(4,2) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone,
    booking_id integer NOT NULL
);
    DROP TABLE public.baggage;
       public         heap    postgres    false            �            1259    24585    baggage_check    TABLE     #  CREATE TABLE public.baggage_check (
    baggage_check_id integer NOT NULL,
    check_result character varying(50) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone,
    booking_id integer NOT NULL,
    passenger_id integer NOT NULL
);
 !   DROP TABLE public.baggage_check;
       public         heap    postgres    false            �            1259    24591    boarding_pass    TABLE     0  CREATE TABLE public.boarding_pass (
    boarding_pass_id integer NOT NULL,
    booking_id integer NOT NULL,
    seat character varying(50) NOT NULL,
    boarding_time timestamp without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);
 !   DROP TABLE public.boarding_pass;
       public         heap    postgres    false            �            1259    24597    booking    TABLE     7  CREATE TABLE public.booking (
    booking_id integer NOT NULL,
    flight_id integer,
    passenger_id integer,
    booking_platform character varying(50),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    status character varying(50),
    ticket_price numeric(7,2)
);
    DROP TABLE public.booking;
       public         heap    postgres    false            �            1259    24594    booking_flight    TABLE     �   CREATE TABLE public.booking_flight (
    booking_flight_id integer NOT NULL,
    booking_id integer NOT NULL,
    flight_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);
 "   DROP TABLE public.booking_flight;
       public         heap    postgres    false            �            1259    24600    flights    TABLE     6  CREATE TABLE public.flights (
    flight_id integer NOT NULL,
    sch_departure_time timestamp without time zone NOT NULL,
    sch_arrival_time timestamp without time zone NOT NULL,
    departing_airport_id integer NOT NULL,
    arriving_airport_id integer NOT NULL,
    departing_gate character varying(50),
    arriving_gate text,
    airline_id integer NOT NULL,
    act_departure_time timestamp without time zone,
    act_arrival_time timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    update_at timestamp without time zone
);
    DROP TABLE public.flights;
       public         heap    postgres    false            �            1259    24629 
   passengers    TABLE     �  CREATE TABLE public.passengers (
    passenger_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name text NOT NULL,
    date_of_birth date NOT NULL,
    country_of_citizenship character varying(50) NOT NULL,
    country_of_residence character varying(50) NOT NULL,
    passport_number character varying(50) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone,
    gender character varying(20)
);
    DROP TABLE public.passengers;
       public         heap    postgres    false            �            1259    24606    security_check    TABLE       CREATE TABLE public.security_check (
    security_check_id integer NOT NULL,
    check_result character varying(20) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone,
    passenger_id integer NOT NULL
);
 "   DROP TABLE public.security_check;
       public         heap    postgres    false            !          0    24579    airline 
   TABLE DATA           r   COPY public.airline (airline_id, airline_code, airline_name, airline_country, created_at, updated_at) FROM stdin;
    public          postgres    false    215   �>       "          0    24582    airport 
   TABLE DATA           i   COPY public.airport (airport_id, airport_name, country, state, city, created_at, updated_at) FROM stdin;
    public          postgres    false    216   *?       $          0    24588    baggage 
   TABLE DATA           _   COPY public.baggage (baggage_id, weight_in_kg, created_at, updated_at, booking_id) FROM stdin;
    public          postgres    false    218   O       #          0    24585    baggage_check 
   TABLE DATA           y   COPY public.baggage_check (baggage_check_id, check_result, created_at, updated_at, booking_id, passenger_id) FROM stdin;
    public          postgres    false    217   #O       %          0    24591    boarding_pass 
   TABLE DATA           r   COPY public.boarding_pass (boarding_pass_id, booking_id, seat, boarding_time, created_at, updated_at) FROM stdin;
    public          postgres    false    219   @O       '          0    24597    booking 
   TABLE DATA           �   COPY public.booking (booking_id, flight_id, passenger_id, booking_platform, created_at, updated_at, status, ticket_price) FROM stdin;
    public          postgres    false    221   ]O       &          0    24594    booking_flight 
   TABLE DATA           j   COPY public.booking_flight (booking_flight_id, booking_id, flight_id, created_at, updated_at) FROM stdin;
    public          postgres    false    220   �O       (          0    24600    flights 
   TABLE DATA           �   COPY public.flights (flight_id, sch_departure_time, sch_arrival_time, departing_airport_id, arriving_airport_id, departing_gate, arriving_gate, airline_id, act_departure_time, act_arrival_time, created_at, update_at) FROM stdin;
    public          postgres    false    222   �O       *          0    24629 
   passengers 
   TABLE DATA           �   COPY public.passengers (passenger_id, first_name, last_name, date_of_birth, country_of_citizenship, country_of_residence, passport_number, created_at, updated_at, gender) FROM stdin;
    public          postgres    false    224   �O       )          0    24606    security_check 
   TABLE DATA           o   COPY public.security_check (security_check_id, check_result, created_at, updated_at, passenger_id) FROM stdin;
    public          postgres    false    223   �O       t           2606    24610    airline airline_info_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.airline
    ADD CONSTRAINT airline_info_pkey PRIMARY KEY (airline_id);
 C   ALTER TABLE ONLY public.airline DROP CONSTRAINT airline_info_pkey;
       public            postgres    false    215            v           2606    24612    airport airport_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.airport
    ADD CONSTRAINT airport_pkey PRIMARY KEY (airport_id);
 >   ALTER TABLE ONLY public.airport DROP CONSTRAINT airport_pkey;
       public            postgres    false    216            x           2606    24614     baggage_check baggage_check_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.baggage_check
    ADD CONSTRAINT baggage_check_pkey PRIMARY KEY (baggage_check_id);
 J   ALTER TABLE ONLY public.baggage_check DROP CONSTRAINT baggage_check_pkey;
       public            postgres    false    217            z           2606    24616    baggage baggage_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.baggage
    ADD CONSTRAINT baggage_pkey PRIMARY KEY (baggage_id);
 >   ALTER TABLE ONLY public.baggage DROP CONSTRAINT baggage_pkey;
       public            postgres    false    218            |           2606    24618     boarding_pass boarding_pass_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.boarding_pass
    ADD CONSTRAINT boarding_pass_pkey PRIMARY KEY (boarding_pass_id);
 J   ALTER TABLE ONLY public.boarding_pass DROP CONSTRAINT boarding_pass_pkey;
       public            postgres    false    219            ~           2606    24620 "   booking_flight booking_flight_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.booking_flight
    ADD CONSTRAINT booking_flight_pkey PRIMARY KEY (booking_flight_id);
 L   ALTER TABLE ONLY public.booking_flight DROP CONSTRAINT booking_flight_pkey;
       public            postgres    false    220            �           2606    24622    booking booking_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (booking_id);
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_pkey;
       public            postgres    false    221            �           2606    24624    flights flights_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_pkey PRIMARY KEY (flight_id);
 >   ALTER TABLE ONLY public.flights DROP CONSTRAINT flights_pkey;
       public            postgres    false    222            �           2606    32815    passengers passengers_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.passengers
    ADD CONSTRAINT passengers_pkey PRIMARY KEY (passenger_id);
 D   ALTER TABLE ONLY public.passengers DROP CONSTRAINT passengers_pkey;
       public            postgres    false    224            �           2606    24628 "   security_check security_check_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.security_check
    ADD CONSTRAINT security_check_pkey PRIMARY KEY (security_check_id);
 L   ALTER TABLE ONLY public.security_check DROP CONSTRAINT security_check_pkey;
       public            postgres    false    223            �           2606    32799    flights arr_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.flights
    ADD CONSTRAINT arr_id FOREIGN KEY (arriving_airport_id) REFERENCES public.airport(airport_id);
 8   ALTER TABLE ONLY public.flights DROP CONSTRAINT arr_id;
       public          postgres    false    222    4726    216            �           2606    32821    baggage bbok_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.baggage
    ADD CONSTRAINT bbok_id FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id);
 9   ALTER TABLE ONLY public.baggage DROP CONSTRAINT bbok_id;
       public          postgres    false    4736    221    218            �           2606    32826    baggage_check bbok_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.baggage_check
    ADD CONSTRAINT bbok_id FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id);
 ?   ALTER TABLE ONLY public.baggage_check DROP CONSTRAINT bbok_id;
       public          postgres    false    217    221    4736            �           2606    32804    booking_flight book_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking_flight
    ADD CONSTRAINT book_id FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id);
 @   ALTER TABLE ONLY public.booking_flight DROP CONSTRAINT book_id;
       public          postgres    false    221    4736    220            �           2606    32836    boarding_pass book_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.boarding_pass
    ADD CONSTRAINT book_id FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id);
 ?   ALTER TABLE ONLY public.boarding_pass DROP CONSTRAINT book_id;
       public          postgres    false    4736    219    221            �           2606    32794    flights dep_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.flights
    ADD CONSTRAINT dep_id FOREIGN KEY (departing_airport_id) REFERENCES public.airport(airport_id);
 8   ALTER TABLE ONLY public.flights DROP CONSTRAINT dep_id;
       public          postgres    false    216    4726    222            �           2606    32809    booking_flight flig_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking_flight
    ADD CONSTRAINT flig_id FOREIGN KEY (flight_id) REFERENCES public.flights(flight_id);
 @   ALTER TABLE ONLY public.booking_flight DROP CONSTRAINT flig_id;
       public          postgres    false    222    4738    220            �           2606    32872    flights line_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.flights
    ADD CONSTRAINT line_id FOREIGN KEY (airline_id) REFERENCES public.airline(airline_id) NOT VALID;
 9   ALTER TABLE ONLY public.flights DROP CONSTRAINT line_id;
       public          postgres    false    215    4724    222            �           2606    32816    booking pass_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT pass_id FOREIGN KEY (passenger_id) REFERENCES public.passengers(passenger_id);
 9   ALTER TABLE ONLY public.booking DROP CONSTRAINT pass_id;
       public          postgres    false    224    221    4742            �           2606    32831    baggage_check pass_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.baggage_check
    ADD CONSTRAINT pass_id FOREIGN KEY (passenger_id) REFERENCES public.passengers(passenger_id);
 ?   ALTER TABLE ONLY public.baggage_check DROP CONSTRAINT pass_id;
       public          postgres    false    224    4742    217            �           2606    32867    security_check pass_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.security_check
    ADD CONSTRAINT pass_id FOREIGN KEY (passenger_id) REFERENCES public.passengers(passenger_id) ON UPDATE CASCADE;
 @   ALTER TABLE ONLY public.security_check DROP CONSTRAINT pass_id;
       public          postgres    false    224    4742    223            !   �   x�3�tr�t�,rM,��t+J�KN�4202�5��52U02�26�26�3�4�46���2�t
��t˩��L��t*J���!�ń3 ?��@�ļ:9��8���NQ���%�y�̭���L-M��,A�b���� X�2j      "   �  x��ZMs�Jv]��w�,���I�-��������l�d�lD�5 �Q��]�B��Tf35��,��J�?�_�s ��IY�d�����{�9/���;Q.4�IIe��i*�(]���*�զ��D�,�B�+���J�mk<��$Ox̂p�I��I�M���ޕ(�g&C�s]��L	��N���oF'ap�9�I�N�|�,(G�d�~�]V��\�J�>�u���y%K�X�^���4a�|��$E�?	S� ��؏�[U�DMٙ��w�֍A�i#�4a��t�z����ӟ7OY��g#� ���O�YI�L~�3i�� ��l�Ȉ�������Te/�J�j��e?(Nx�<N&<���9��>3�S�V����P��F�0g嶝����c�J�s]-5=�Zl�y]���#_�Hy�Yt�,D���ϼ7B����S.�,E������F�U�9���!�?	\�0���$�s�J�}�lE�c
�8�Wҝ0"�����|0�P#� �63���G9_�����|���D���/z���)�,�U����aApI�	��0�މ�X+����Y�C��[��Ȟ���S��hE�0��лћ��A@�gb�[�̌b�'��ݹ�{0�c귐{_�F,��J��3��؈GUR�7@�xd�~�\WsY�z�L�Qj^��z��ȻՀm%���!��I���i�0+���/�n�D)+�Aճ�,�pYw�������hJ?���� �wJ���W��ػ�}r�:T�D�`z� L5����!������5�@c?&�
�۷��B:+$�\���F������ Zo�hopb@����+yrZne���u5d�"TŸ*K|�O�S��Y���d����9"�w���0�J�['�=���;>~B?�����ZV���j�+ه��6k�Z�А�qP�	P����Px_������(E��/M��ik�k��Q���0���X����+h�$Z#6r��C�n�fh�6`�S�x��g�/���<D��ٹ��5�'Q=���­��Č���uA+ �?��$2J+�`��hհ[��եj@e_ľ"����GP�����(\a��{����l� �aJ�M|��Q.e�
��i���0U8;�b��F8��(b�:��#<G�}��e���nͨh��W5�޻V�4�� 1(���t=�ۖ�@�q䠗�2���<�>�v�	c�����}����;���k~�,�yꝳW�낝��v&�ϵ�՜D�m[�����t���
�8p�d9��>(̼Ӳр4;+1��֑6f���4��bp��c9]�&7tR�.�W}��]ռ=�Gj�а�FzI����@�^hĩQ�FTk�Z������vNM����� !] C��[�.e�V��\�A���5��T�Qgh����Fjbq�G!�e6��A.0C�E	�o6�����c+Vrל		F�P�ڃr�S_�����ykU�Q7
�e���m����D��n�E��Lĝ�Jz�e>�p�x�&pm�BV��n��ݹ��{��&�Bҕ�"�!��a�#;7-����#����{A+�����;1w0)���	8��\< �������S+$�����3��.7�oT�j�x!˥h�oZ�z`\�$���$��cR�B��do���\�T�-������T��_���;A�N��a�?z�e�O��ވ�`<WK�)��[0li�� �5
��!�(���N?��S�Y�z���6$��G�xzN��&\�G��A�ũ�eS�y��^)Q_%5�'%�9I��Ǩ?]���F�adU9��JCփ-4���*0l�@Z�ʆĒ�L�g�cT��LA~:\K�Z���F^�+�u!H^��\p;9��1�l^� �>�V�Q�F >S3U�;�ڮ��8\[���1�1ph�k)�z4Z��y��>��aj-T�֎�c��H4.c�6�7o�Z�b�&��Vx��hp8�$:�	�0�sݜ@vQ/�K���uh0� T�[ J>'��Or~��9�6@������a;�j
=��5�a�Bx}��$������.��t����!:�������>Ѝc@�R2k��I����ӟw���%����T�/N���P.Rϝ��
�E?���n���wv�'��]�������b"�Mŝ�Y��#P���-G�3�E�`�ۿ4�ɖ&�A���ĸq�?��n��,�w-ZXhq��ڊ�g��)�^���f���w��i7nNZ	H.�H�
>$�Q�sH���L�|�`?��~�2�]7�n���|@/�)��/(����mZ�����lC4n;�"��Cނ��G�Ag�K����7����� p>OE��v�"�w���r$���.���^m�y2;H �ߣ/r��I�@4�=��<L�ԈE7�;�[ʀ.��څ�Mh�z��[�-ޜ~`W�&��[�7d�]hx�R��K��Q��LB���"$#J�C�h^u23%W.V;묒\(�nځ^��� Tw�Q!���O�J�Z��Pկn�XU�ni�YAC[�Fz�v��#��2�G�%*����W�6\�XfD�)�K��K��5��~��!6^�uUD��1���#���U�i�9�������R;�\�8�D:k�]�[3�@� sh��^k��������w
��QᧃS���<ަ�v-6m��Sc:-���f��4%�Z�m�ޔj�j�1G�F��20�u�w�=;�f�F)���py��'��ٰn��lh�,A���B��
�k�u�wz�[��rϳ��2Y�{ a�.E�+���6F5-F�m �ئ�M#��vZ$=�v���D(
Qxӝ\��b�+�w�
�(r7(b;�8�5L��֖�R����O�\?�{��{��p^%�7�Q�ڡ����pg��x%?�:pSFkǗt������Kh���>�e����������6�Q��"�\ڵm�g�w%�k躝*K�^�*�m�v����C�,G�ﶊ?�m��o���S�q�j��;pz'�ѽ���p�K�p?��sxيno�Kefn��[�jwX vFC� GvN�uF2�[~&NL̝Ǥ�4���d�wm���{���]/�֛�1G$c"�S�����L��|��8��}K������{�^`���\�F=@ʼ֕;Q�{��l�� ��G�"���o�8��hDHI]�{��};_�t~������"ț�y�A��{��m��t@,�/�H����%�Ο<_H��j4�N�H��^ς���_gb=|���-l�D�b�MrZ/�z�D���M1����� ��K:C4�/��n��_~�^�����l�L4���Aw�-!}Q���z$��5��S�n*sL�{�Uǝ'������h�m�cߣ���o�F�5��̀NJqr!�U�Y�N�y���H3s��y�7{]����ڏ:�_�ިz�)�A煖��{Iie):�^�"-���;�p~/�$�,��� ���n�F�>��鐤�Ү]G������R���[�qO��ވQ�YF�����Nk,!� w�»X��G��V:��>)�{��z�P�Z�E�]��p"������\�8^��Z�o�������"D�6����f����u�ă����9�'$�'h��/���^�� A\i�]��ے]��������~��`��{Cʭ;���S�����Q�k�z� @���T�w�C>~^ϫq��K�8s×�/ ��/b�r�L�wD������/�-��u���]�8�8-fF��#eR�~�x�+d�y'�3[�VW�$����uM/(Oib��4�UG��p�OOJ}���a�԰�..�[�L��s1M��w͘�K�0�Z���Ⱦu�;3#AWy�ʴ�%4�uv�\k�ŰH���(��{�*����^q�%m�U�]A@�f8o��:(��MKL����P��3
��壋ϱ�^��k�p� �ag�#+��>AᇸJ�B�F<�	��5����_�z$��n��������]�      $      x������ � �      #      x������ � �      %      x������ � �      '   (   x�3��CG��z\&X�,�M�r����A�b���� K�      &      x������ � �      (      x������ � �      *      x������ � �      )      x������ � �     