<?php
/**
 * @author         Pierre-Henry Soria <hello@ph7builder.com>
 * @copyright      (c) 2012-2023, Pierre-Henry Soria. All Rights Reserved.
 * @license        MIT License; See LICENSE.md and COPYRIGHT.md in the root directory.
 * @package        PH7 / App / System / Module / User / Form
 */

declare(strict_types=1);

namespace PH7;

use PFBC\Element\Button;
use PFBC\Element\File;
use PFBC\Element\Hidden;
use PFBC\Element\HTMLExternal;
use PFBC\Element\Token;
use PH7\Framework\Mvc\Router\Uri;
use PH7\Framework\Url\Header;

class AvatarForm
{
    public static function display(): void
    {
        if (isset($_POST['submit_avatar'])) {
            if (\PFBC\Form::isValid($_POST['submit_avatar'])) {
                new AvatarFormProcess;
            }

            Header::redirect();
        }

        $oForm = new \PFBC\Form('form_avatar');
        $oForm->configure(['action' => '']);
        $oForm->addElement(new Hidden('submit_avatar', 'form_avatar'));
        $oForm->addElement(new Token('avatar'));

        if (AdminCore::auth() && !User::auth()) {
            $oForm->addElement(
                new HTMLExternal('<p><a class="s_tMarg bold btn btn-default btn-md" href="' . Uri::get(PH7_ADMIN_MOD, 'user', 'browse') . '">' . t('Back to Browse Users') . '</a></p>')
            );
        }

        $oForm->addElement(new File(t('Your Profile Photo'), 'avatar', ['accept' => 'image/*', 'required' => 1]));
        $oForm->addElement(new Button(t('Save'), 'submit', ['icon' => 'check']));
        $oForm->render();
    }
}
